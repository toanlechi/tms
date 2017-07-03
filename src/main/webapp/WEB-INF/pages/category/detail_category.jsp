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
		<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
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
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Create by</th>
								<th>Create At</th>
								<th>###</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="courses" items="${listCourses}" varStatus="stt">
								<tr>
									<td>${stt.index +1}</td>
									<td><a href="#">${courses.name}</a></td>
									<td>${courses.description}</td>
									<td>${courses.trainingStaff.name}</td>
									<td>${courses.createdAt}</td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle"
												data-toggle="dropdown">
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" style="width: 20px;">
												<li><a href="#">Edit</a></li>
												<li><a href="#">Delete</a></li>
											</ul>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Create by</th>
								<th>Create At</th>
								<th>###</th>
							</tr>
						</tfoot>
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


