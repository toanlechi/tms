<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<section class="content-header">
	<h1>
		Dashboard <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/category" />"> <i
				class="fa fa-cube"></i> Category
		</a></li>
		<li class="active">Detail</li>
	</ol>
</section>

<sec:authentication property="principal" var="user" />
<!-- Main content -->
<section class="content">
	<div class="row" style="margin-top: 30px;">
		<div class="col-xs-12">
			<div class="box box-primary">
				<div class="box-header with-border">
					<div class="row">
						<div class="col-sm-6">
							<h3 class="box-title">Information</h3>
						</div>
						<div class="col-sm-6 text-right">
							<c:set value="${user.username }" var="emailUser" />
							<c:set value="${category.trainingStaff.email}" var="emailOwn" />
							<c:if test="${emailUser==emailOwn }">
								<a href='<c:url value="/category/${category.id }/edit" />'
									class="btn btn-primary btn-sm">Edit</a>
							</c:if>
						</div>
					</div>
				</div>

				<div class="box-body">

					<input type="text" class="hidden" value="${category.id }"
						id="category-id">

					<div class="row">
						<div class="col-sm-2">
							<strong>Name:</strong>
						</div>

						<div class="col-sm-10">
							<p id="name-label">${category.name }</p>

						</div>

					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Create by:</strong>
						</div>

						<div class="col-sm-10">
							<p>${category.trainingStaff.name}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Create At:</strong>
						</div>

						<div class="col-sm-10">
							<p>${category.createdAt}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Description:</strong>
						</div>

						<div class="col-sm-10">
							<p id="description-label">${category.description}</p>
						</div>
					</div>
				</div>
			</div>

			<br>

			<div class="box">

				<div class="box-header">
					<h3 class="box-title">List Courses of this Categories</h3>
				</div>
				<!-- /.box-header -->

				<div class="box-body">

					<table id="courses_list" class="table table-bordered table-hover">
						<thead>
							<tr>
								<th style="text-align: center;">ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Create by</th>
								<th>Create At</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="courses" items="${listCourses}" varStatus="stt">
								<tr>
									<td style="width: 5%; text-align: center;">${stt.index +1}</td>
									<td style="width: 20%;"><a href="#">${courses.name}</a></td>
									<td>${courses.description}</td>
									<td style="width: 15%;">${courses.trainingStaff.name}</td>
									<td style="width: 15%;">${courses.createdAt}</td>
									<td style="width: 5%; text-align: center;"><a
										style="cursor: pointer;"><span class="fa fa-trash-o"></span></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>

				</div>
				<!-- /.box-body -->

			</div>
			<!-- /.box -->

		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>


<script type="text/javascript">
	$(function() {
		$("#courses_list").DataTable({});
	});
</script>


