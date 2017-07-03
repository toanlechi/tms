<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<section class="content-header">
	<h1>Topic</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/topic" />"><i class="fa fa-file"></i> Topic</a></li>
		<li>Detail</li>
	</ol>
</section>

<sec:authentication property="principal" var="user" />
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<div class="box box-primary">
				<div class="box-header with-border">
					<div class="row">
						<div class="col-sm-6">
							<h3 class="box-title">Information</h3>
						</div>
						<div class="col-sm-6 text-right">
							<c:set value="${user.username }" var="emailUser" />
							<c:set value="${topic.trainingStaff.email}" var="emailOwn" />
							<c:if test="${emailUser==emailOwn }">
								<a href='<c:url value="/topic/${topic.id}/edit" />'
									class="btn btn-primary btn-sm">Edit</a>
							</c:if>
						</div>
					</div>
				</div>

				<div class="box-body">
					<div class="row">
						<div class="col-sm-2">
							<strong>Name:</strong>
						</div>

						<div class="col-sm-10">
							<p id="name-label">${topic.name }</p>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Trainer:</strong>
						</div>

						<div class="col-sm-10">
							<p id="name-label">${topic.trainer.name }</p>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Courses :</strong>
						</div>

						<div class="col-sm-10">
							<p id="category-label">${topic.courses.name}</p>

						</div>
					</div>


					<div class="row">
						<div class="col-sm-2">
							<strong>Create by:</strong>
						</div>

						<div class="col-sm-10">
							<p>${topic.trainingStaff.name}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Create At:</strong>
						</div>

						<div class="col-sm-10">
							<p>${topic.createdAt}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-2">
							<strong>Description:</strong>
						</div>

						<div class="col-sm-10">
							<p id="description-label">${topic.description}</p>

						</div>
					</div>
				</div>
			</div>

			<br>

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Condensed Full Width Table</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body no-padding">
					<table class="table table-condensed">
						<tr>
							<th style="width: 10px">#</th>
							<th>Name</th>
							<th>Time</th>
							<th style="width: 40px">Label</th>
						</tr>
						<tr>
							<td>1.</td>
							<td>Update software</td>
							<td>
								<div class="progress progress-xs">
									<div class="progress-bar progress-bar-danger"
										style="width: 55%"></div>
								</div>
							</td>
							<td><span class="badge bg-red">55%</span></td>
						</tr>
						<tr>
							<td>2.</td>
							<td>Clean database</td>
							<td>
								<div class="progress progress-xs">
									<div class="progress-bar progress-bar-yellow"
										style="width: 70%"></div>
								</div>
							</td>
							<td><span class="badge bg-yellow">70%</span></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>Cron job running</td>
							<td>
								<div class="progress progress-xs progress-striped active">
									<div class="progress-bar progress-bar-primary"
										style="width: 30%"></div>
								</div>
							</td>
							<td><span class="badge bg-light-blue">30%</span></td>
						</tr>
						<tr>
							<td>4.</td>
							<td>Fix and squish bugs</td>
							<td>
								<div class="progress progress-xs progress-striped active">
									<div class="progress-bar progress-bar-success"
										style="width: 90%"></div>
								</div>
							</td>
							<td><span class="badge bg-green">90%</span></td>
						</tr>
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