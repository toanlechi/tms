<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Courses <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-book"></i> Courses</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">

			<!-- box  Courses -->
			<div class="box" id="box-courses">
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
											<input type="radio" name="radio" value="2" id="radio-people">
											Search by creator
										</div>
									</div>
								</div>

								<div class="form-group" style="text-align: left;">
									<label for="exampleCategory">Category</label> <select
										class="form-control" id="list-category" name="locationTo">
										<option value="0">All</option>
										<c:forEach items="${listCategory }" var="category">
											<option value="${category.id }">${category.name }</option>
										</c:forEach>
									</select>
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
						<!-- /.box -->
					</div>


					<div class="col-sm-4 text-right">
						<a class="btn btn-primary" href="<c:url value="/courses/add" />">Add</a>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="table-courses">
						<table id="courses-table"
							class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Description</th>
									<th>Date</th>
									<th>Remove</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="coursesItem" items="${listCourses }"
									varStatus="stt">
									<tr id="tr${coursesItem.id }">
										<td style="width: 5%; text-align: center;">${stt.index +1 }</td>
										<td style="width: 20%;"><a
											href='<c:url value="/courses/${coursesItem.id }" />'>${coursesItem.name }</a></td>
										<td>${coursesItem.description }</td>
										<td style="width: 15%;">${coursesItem.createdAt }</td>
										<td  style="text-align: center; width: 7%;"><a data-toggle="modal" data-target="#dialog-question"
											onclick="set_id_courses(${coursesItem.id }, '${coursesItem.name }')"
											style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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
	<!-- /.row -->
</section>
<!-- /.content -->

<div class="modal" id="dialog-question" aria-hidden="true">
	<input class="hidden" type="text" id="id-courses">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Delete</h4>
			</div>
			<div class="modal-body" id="message">
				<p>One fine body&hellip;</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-left"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary"
					onclick="remove_courses()" data-dismiss="modal">OK</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<script>
	$(function() {
		$("#courses-table").DataTable({
			"searching": false
		});
		
	});
	
	function set_id_courses(id, name) {
		$("#id-courses").val(id);
		$("#message").empty();
		$("#message").append("<p>Do you want delete courses <strong>" + name+ "</strong> ?</p>");
	}
	function remove_courses() {
		var id= $("#id-courses").val();
		$.ajax({
			url : "/tms/courses/"+id+"/remove",
			type : 'GET',
			success : function(res) {
				$("#tr"+id).remove();
			}
		});

	}
	
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
	
	function onSearch(){
		var data = {}
		data["text"] = $("#input-search").val();
		if ($("#radio-name").is(":checked")){
			data["searchBy"] = "name";
		} else  {
			data["searchBy"] = "people";
		} 
		data["categoryId"] = $("#list-category").val();
		data["dateFrom"] = $("#date-from").val();
		data["dateTo"] = $("#date-to").val();
		
		var  con =  $("#table-courses");
		var loading = $("#loading");
		con.empty();
		loading.removeClass("hidden");
		
		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/searchCourses",
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