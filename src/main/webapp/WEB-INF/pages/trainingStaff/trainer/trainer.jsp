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
					<h3 class="box-title">List of trainer</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
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
											<td style="text-align: center;width: 5%;"><c:out value="${loop.index + 1}" /></td>
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
</script>