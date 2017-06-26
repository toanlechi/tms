<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Dashboard <small><c:out value="${demo}" /></small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row" style="margin-top: 30px;">
		<div class="col-xs-12">

			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Information</h3>

				</div>

				<div class="box-body">
					<input type="text" class="hidden" value="${courses.id }"
						id="courses-id">

					<div class="row">
						<div class="col-sm-2">
							<strong>Name:</strong>
						</div>

						<div class="col-sm-10">
							<p id="name-label">${courses.name }
								<a href='<c:url value="/courses/${courses.id}/edit" />'><span
									class="fa fa-pencil" style="cursor: pointer"></span></a>
							</p>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Category :</strong>
						</div>

						<div class="col-sm-10">
							<p id="category-label">${courses.category.name}
								<a href='<c:url value="/courses/${courses.id}/edit" />'><span
									class="fa fa-pencil" style="cursor: pointer"></span></a>
							</p>

						</div>
					</div>


					<div class="row">
						<div class="col-sm-2">
							<strong>Create by:</strong>
						</div>

						<div class="col-sm-10">
							<p>${courses.trainingStaff.name}</p>
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
							<p id="description-label">${courses.description}
								<a href='<c:url value="/courses/${courses.id}/edit" />'><span
									class="fa fa-pencil" style="cursor: pointer"></span></a>
							</p>

						</div>
					</div>
				</div>
			</div>


			<br>


			<!-- Tab-->
			<ul class="nav nav-tabs" role="tablist" id="myTab"
				style="margin-bottom: 5px">
				<li class="active"><a href="#list-topic" role="tab"
					data-toggle="tab">List Topic Of Courses</a></li>
				<li><a href="#list-trainee" role="tab" data-toggle="tab">List
						Trainee Of Courses</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="list-topic">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">List Topic of Courses</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example2" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th style="width: 3%">STT</th>
										<th style="width: 15%">Name</th>
										<th style="width: 37%">Description</th>
										<th style="width: 20%">Create by</th>
										<th style="width: 15%">Create At</th>
										<th style="width: 10%">###</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="topic" items="${listTopic}" varStatus="stt">
										<tr>
											<td>${stt.index+1}</td>
											<td>${topic.name}</td>
											<td>${topic.description}</td>
											<td>${topic.trainingStaff.name}</td>
											<td>${topic.createdAt}</td>
											<td>
												<div class="btn-group">
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="caret"></span>
													</button>
													<ul style="width: 20px" class="dropdown-menu" role="menu">
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
										<th style="width: 3%">STT</th>
										<th style="width: 15%">Name</th>
										<th style="width: 37%">Description</th>
										<th style="width: 20%">Create by</th>
										<th style="width: 15%">Create At</th>
										<th style="width: 10%">###</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</div>
				<div class="tab-pane fade" id="list-trainee">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">List trainee of Courses</h3>

						</div>
						<!-- /.box-header -->
						<div class="box-body">

							<button style="margin-bottom: 10px" type="button"
								class="btn btn-default" id="btn-addtrainee" data-toggle="modal"
								data-target="#dialog-trainee">Add Trainee</button>
							<div class="modal fade bs-example-modal-lg" tabindex="-1"
								id="dialog-trainee" role="dialog"
								aria-labelledby="myLargeModalLabel2" aria-hidden="true">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<button type="button" class="close">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>

										<table id="example3" class="table table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 3%">STT</th>
													<th style="width: 10%">Name</th>
													<th style="width: 10%">Age</th>
													<th style="width: 15%">Birth Day</th>
													<th style="width: 15%">Education</th>
													<th style="width: 15%">TOEIC score</th>
													<th style="width: 22%">Address</th>
													<th style="width: 10%">###</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="trainee" items="${listTrainee}"
													varStatus="stt">
													<tr>
														<td>${stt.index+1 }</td>
														<td>${trainee.name}</td>
														<td>${trainee.age}</td>
														<td>${trainee.birthday}</td>
														<td>${trainee.education}</td>
														<td>${trainee.toeicScore}</td>
														<td>${trainee.address}</td>
														<td>
															<div class="checkbox">
																<label> <input type="checkbox"></label>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th style="width: 3%">STT</th>
													<th style="width: 10%">Name</th>
													<th style="width: 10%">Age</th>
													<th style="width: 15%">Birth Day</th>
													<th style="width: 15%">Education</th>
													<th style="width: 15%">TOEIC score</th>
													<th style="width: 22%">Address</th>
													<th style="width: 10%">###</th>
												</tr>
											</tfoot>
										</table>
										<div style="text-align: center;">
											<button type="submit" class="btn btn-primary">Save</button>
											<button id="" type="submit" class="btn btn-default">Cancel
											</button>
										</div>
									</div>
								</div>
							</div>
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th style="width: 3%">STT</th>
										<th style="width: 10%">Name</th>
										<th style="width: 10%">Age</th>
										<th style="width: 15%">Birth Day</th>
										<th style="width: 15%">Education</th>
										<th style="width: 15%">TOEIC score</th>
										<th style="width: 22%">Address</th>
										<th style="width: 10%">###</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="trainee" items="${list}" varStatus="stt">
										<tr>
											<td>${stt.index+1 }</td>
											<td>${trainee.name}</td>
											<td>${trainee.age}</td>
											<td>${trainee.birthday}</td>
											<td>${trainee.education}</td>
											<td>${trainee.toeicScore}</td>
											<td>${trainee.address}</td>
											<td>
												<div class="btn-group">
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="caret"></span>
													</button>
													<ul style="width: 20px" class="dropdown-menu" role="menu">
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
										<th style="width: 3%">STT</th>
										<th style="width: 10%">Name</th>
										<th style="width: 10%">Age</th>
										<th style="width: 15%">Birth Day</th>
										<th style="width: 15%">Education</th>
										<th style="width: 15%">TOEIC score</th>
										<th style="width: 22%">Address</th>
										<th style="width: 10%">###</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</div>
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
