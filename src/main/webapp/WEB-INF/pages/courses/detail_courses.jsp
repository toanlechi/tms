<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<%@ taglib uri="http://www.springframework.org/security/tags"
		prefix="sec"%>
	<h1>Courses</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/courses" />"> <i
				class="fa fa-book"></i> Courses
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
							<c:set value="${courses.trainingStaff.email}" var="emailOwn" />
							<c:if test="${emailUser==emailOwn }">
								<a href='<c:url value="/courses/${courses.id}/edit" />'
									class="btn btn-primary btn-sm">Edit</a>
							</c:if>

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
							<p id="description-label">${courses.description}</p>

						</div>
					</div>
				</div>
			</div>


			<br>

			<div class="nav-tabs-custom">
				<!-- Tab-->
				<ul class="nav nav-tabs" role="tablist" id="myTab"
					style="margin-bottom: 5px">
					<li class="active"><a href="#list-topic" role="tab"
						data-toggle="tab">List Topic Of Courses</a></li>
					<li><a href="#list-trainee" role="tab" data-toggle="tab">List
							Trainee Of Courses</a></li>
					<li><a href="#list-review" role="tab" data-toggle="tab">List
							Review Of Courses</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="list-topic">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">List Topic of Courses</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>STT</th>
											<th>Name</th>
											<th>Description</th>
											<th>Create by</th>
											<th>Create At</th>
											<th>Remove</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="topic" items="${listTopic}" varStatus="stt">
											<tr>
												<td style="width: 5%; text-align: center;">${stt.index+1}</td>
												<td style="width: 15%;"><a
													href='<c:url value="/topic/${topic.id }" />'>${topic.name}</a></td>
												<td>${topic.description}</td>
												<td style="width: 15%;">${topic.trainingStaff.name}</td>
												<td style="width: 15%;">${topic.createdAt}</td>
												<td style="width: 7%; text-align: center;"><a
													data-toggle="modal" data-target="#dialog-question"
													onclick="set_id_topic(${topic.id }, '${topic.name }')"
													style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
											</tr>
										</c:forEach>
									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<div class="tab-pane" id="list-trainee">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">List trainee of Courses</h3>
							</div>
							<div class="box-body">
								<button style="margin-bottom: 10px" type="button"
									class="btn btn-default" data-toggle="modal"
									data-target="#dialog-import">Add Trainee</button>

								<div id="table-trainee">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>ID</th>
												<th>Name</th>
												<th>Email</th>
												<th>Birthday</th>
												<th>Address</th>
												<th>Remove</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="trainee" items="${listTrainee}"
												varStatus="stt">
												<tr>
													<td style="text-align: center; width: 5%">${stt.index+1 }</td>
													<td style="width: 15%">${trainee.name}</td>
													<td style="width: 20%">${trainee.email}</td>
													<th style="width: 20%">${trainee.birthday}</th>
													<th>${trainee.address}</th>
													<td style="text-align: center; width: 5%"><a
														style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
												</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
							</div>
							<!-- /.box-body -->
							<!-- Loading (remove the following to stop the loading)-->
							<div class="overlay hidden" id="loading">
								<i class="fa fa-refresh fa-spin"></i>
							</div>
							<!-- end loading -->
						</div>

					</div>

					<div class="tab-pane" id="list-review">
						<c:if test="${not empty listReviewCourses}">
							<c:forEach items="${listReviewCourses}" var="reviewCourses"
								varStatus="loop">
								<input id="showrate" type="text" class="rating rating-loading"
									data-size="xs" data-min="0" data-max="5" data-step="1"
									data-readonly="true" value="${reviewCourses.star}">
								<div class="form-group" id="formContent">
									<label>${reviewCourses.trainee.name}</label>
									<p>${reviewCourses.review}</p>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>


<!-- Modal show import Excel file -->
<div class="modal modal-default" id="dialog-import" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Import Trainee</h4>
			</div>
			<div class="modal-body" id="content-excel">
				<p>Select file format: *.xlsx</p>
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						id="fileLoader" name="file">

					<p class="help-block">Example block-level help text here.</p>
				</div>

				<a href="#">Template excel file</a>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-left"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal"
					id="fileSubmit">OK</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- Modal view question delete topic -->
<div class="modal" id="dialog-question" aria-hidden="true">
	<input class="hidden" type="text" id="id-topic">
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
					onclick="remove_topic()" data-dismiss="modal">OK</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>



<script>
	var files = [];
	$(document).on("change", "#fileLoader", function(event) {
		files = event.target.files;
	})

	$(document).on("click", "#fileSubmit", function() {
		processUpload();
	})

	function processUpload() {
		var load = $("#loading");
		load.removeClass("hidden");
		var oMyForm = new FormData();
		oMyForm.append("file", files[0]);
		oMyForm.append("coursesId", $("#courses-id").val());
		$.ajax({
			dataType : 'text',
			url : "/tms/ajax/uploadExcel",
			data : oMyForm,
			type : "POST",
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			success : function(result) {
				console.log(result);
				$("#table-trainee").empty();
				$("#table-trainee").append(result);
				load.addClass("hidden");
				//...;
			},
			error : function(result) {
				console.log(result);
				//...;
			}
		});
	}
	
	function set_id_topic(id, name) {
		$("#id-topic").val(id);
		$("#message").empty();
		$("#message").append("<p>Do you want delete topic <strong>" + name+ "</strong> ?</p>");
	}
	
	function remove_topic() {
		var id = $("#id-topic").val();
		$.ajax({
			url : "/tms/topic/"+id+"/remove",
			type : 'GET',
			success : function(res) {
				$("#tr"+id).remove();
			}
		});

	}
</script>

