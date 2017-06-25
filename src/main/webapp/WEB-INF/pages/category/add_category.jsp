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
		<div class="col-sm-12 col-md-6 col-md-offset-3">
			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">Add Category</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<c:url value="/category/add" var="post_category" />
					<form role="form" method="post" action="${post_category}">
						<input class="hidden" value="${category.id }" name="categoryId">
						<!-- text input -->
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								name="name" placeholder="Category name ..."
								value="${category.name }">
						</div>

						<!-- textarea -->
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" rows="5" placeholder="Description"
								name="description">${category.description }</textarea>
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
