<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h4>Trainer Manager</h4>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/admin/trainerManager" />"><i
				class="fa fa-folder-open-o"></i> Trainer Manager</a></li>
		<li class="active">Add new trainer</li>
	</ol>
</section>


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
							<a href='' class="btn btn-primary btn-sm">Edit</a>
						</div>
					</div>
				</div>

				<div class="box-body">
					<input type="text" class="hidden" value="${courses.id }"
						id="courses-id">
					<div class="row">
						<div class="col-sm-2">
							<strong>Name:</strong>
						</div>
						<div class="col-sm-10">
							<p id="name-label">${courses.name }</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Category :</strong>
						</div>
						<div class="col-sm-10">
							<p id="category-label">${courses.category.name}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Create At:</strong>
						</div>
						<div class="col-sm-10">
							<p>${courses.createdAt}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Description:</strong>
						</div>
						<div class="col-sm-10">
							<p id="description-label">${courses.description}</p>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-xs-12">
		</div>
	</div>
</section>