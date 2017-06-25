<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Dashboard <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">


	<div class="row" style="margin-top: 30px;">
		<div class="col-sm-12  col-md-6 col-md-offset-3">
			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">Add Courses</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<c:url value="/courses/add" var="post_courses" />
					<form role="form" method="post" action="${post_courses}">
						<input class="hidden" value="${courses.id }" name="coursesId">

						<!-- select -->
						<div class="form-group">
							<label>Select</label> <select class="form-control"
								name="category">
								<c:if test="${courses.id != null}">
									<option value="${courses.category.id }">${courses.category.name }</option>
								</c:if>

								<c:forEach items="${categories }" var="category">
									<option value="${category.id }">${category.name }</option>
								</c:forEach>
							</select>
						</div>

						<!-- text input -->
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Name" name="name" value="${courses.name }">
						</div>

						<!-- textarea -->
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" rows="5" placeholder="Description"
								name="description">${courses.description }</textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Save</button>

						</div>


					</form>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->

		</div>

	</div>
</section>
<!-- /.content -->

<script>
	$(function() {
		$("#category-table").DataTable();

	});
</script>