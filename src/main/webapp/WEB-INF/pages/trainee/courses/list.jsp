<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		List Courses <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/trainee/courses" />"> <i
				class="fa fa-folder-open-o"></i> Trainer Courses
		</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">List courses</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<c:choose>
						<c:when test="${empty listCourses}">
							<p>No Courses</p>
						</c:when>
						<c:otherwise>
							<table id="myTable" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>Description</th>
										<th>Create At</th>
										<th>View Details</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listCourses}" var="coursesItem"
										varStatus="loop">
										<tr>
											<td align="center">${loop.index + 1}</td>
											<td>${coursesItem.name }</td>
											<td>${coursesItem.description }</td>
											<td>${coursesItem.createdAt }</td>
											<td align="center">
												<a href="<c:url value="/trainee/courses/${coursesItem.id}/show" />"
												title="Show Courses"> <i class="fa fa-search"></i>
												</a>
											</td>
										<tr>
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

<script>
	$(function() {
		$("#myTable").DataTable();
	});
</script>