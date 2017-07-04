<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Trainer Manager <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/admin/trainerManager" />"><i
				class="fa fa-folder-open-o"></i> Trainer Manager</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<c:if test="${not empty success}">
		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">×</button>
			<i class="icon fa fa-check"></i> ${success}
		</div>
	</c:if>

	<c:if test="${not empty error}">
		<div class="alert alert-danger alert-dismissible">
			<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">×</button>
			<i class="icon fa fa-exclamation-triangle"></i> ${error}
		</div>
	</c:if>

	<p>
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<div class="col-sm-8">
						<div class="box box-default collapsed-box">
							<div class="box-header with-border">
								<div class="col-sm-10">
									<div class="input-group">
										<input type="text" name="search" class="form-control"
											placeholder="Search" id="input-search">

										<div class="input-group-btn">
											<button onclick="onSearch()" class="btn btn-info btn-flat">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
									<!-- /.input-group -->

								</div>

								<div class="col-sm-2">
									<div class="box-tools pull-right">
										<button class="btn btn-box-tool" data-widget="collapse">
											Options <i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col-xs-6">
										<div class="form-group text-center">
											<input type="radio" name="radio" value="1" id="radio-name"
												checked> Search by name
										</div>
									</div>
									<div class="col-xs-6">
										<div class="form-group  text-center">
											<input type="radio" name="radio" value="2" id="radio-email">
											Search by email
										</div>
									</div>
								</div>

								<div class="form-group"
									style="text-align: left; margin-bottom: 5px;">
									<label for="exampleInputEmail1">Date crate</label>
								</div>

								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<div class='input-group date' id='datetimepicker2'>
												<input type='text' class="form-control" placeholder="Since"
													id="date-from" name="dateFrom" /> <span
													class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>

									<div class="col-xs-12 col-sm-6 col-md-6">
										<div class="form-group">
											<div class='input-group date' id='datetimepicker3'>
												<input type='text' class="form-control"
													placeholder="Come now" id="date-to" name="dateTo" /> <span
													class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
										</div>
									</div>

								</div>
							</div>
							<!-- /.box-body -->
						</div>
					</div>
					<!-- /.box -->
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="table-trainer">
						<c:choose>
							<c:when test="${empty listTrainer}">
								<p>No Trainer</p>
							</c:when>
							<c:otherwise>
								<table id="myTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>ID</th>
											<th>Name</th>
											<th>Email</th>
											<th>Phone</th>
											<th>Created At</th>
											<th>Updated At</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listTrainer}" var="trainer"
											varStatus="loop">
											<tr>
												<td style="text-align: center; width: 5%;"><c:out
														value="${loop.index + 1}" /></td>
												<td><a
													href="<c:url value="/trainingStaff/trainer/${trainer.id}/edit" />"
													title="Edit Category">${trainer.name}</a></td>
												<td style="width: 20%;">${trainer.email}</td>
												<td style="width: 15%;">${trainer.phone}</td>
												<td style="width: 15%;">${trainer.createdAt}</td>
												<td style="width: 15%;">${trainer.updatedAt}</td>

											</tr>

										</c:forEach>
									</tbody>
								</table>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="overlay hidden" id="loading" style="margin-top: 260px;">
						<i class="fa fa-refresh fa-spin"></i>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
</section>
<!-- /.content -->
<script>
	$(function() {
		$("#myTable").DataTable({
			"searching" : false
		});
	});

	$(function() {

		$('#datetimepicker2').datetimepicker({
			format : 'YYYY-MM-DD'
		});

		$('#datetimepicker3').datetimepicker({
			format : 'YYYY-MM-DD'
		});

	});

	$("#datetimepicker2").on('dp.change', function(e) {
		var dateGo = $('#date-from').val();
		$('#datetimepicker3').data("DateTimePicker").destroy();
		$('#datetimepicker3').datetimepicker({
			format : 'YYYY-MM-DD',
			minDate : new Date(dateGo)
		});

	});

	function onSearch() {
		var data = {}
		data["text"] = $("#input-search").val();
		if ($("#radio-name").is(":checked")) {
			data["searchBy"] = "name";
		} else {
			data["searchBy"] = "email";
		}
		data["dateFrom"] = $("#date-from").val();
		data["dateTo"] = $("#date-to").val();

		var con = $("#table-trainer");
		var loading = $("#loading");
		con.empty();
		loading.removeClass("hidden");

		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/searchTrainer",
			data : data,
			dataType : 'text',
			timeout : 600000,
			success : function(data) {
				loading.addClass("hidden");
				con.append(data);
			},
			error : function(e) {

			}
		});
	}
</script>