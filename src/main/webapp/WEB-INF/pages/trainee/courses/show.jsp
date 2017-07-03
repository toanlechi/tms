<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h4>Courses Info</h4>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/trainee/courses" />"><i
				class="fa fa-folder-open-o"></i> Courses Manager</a></li>
		<li class="active">View details courses</li>
	</ol>
</section>


<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- /.col -->
		<div class="col-md-12">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#courses" data-toggle="tab">Courses
							Details</a></li>
					<li><a href="#reviewcourses" data-toggle="tab">Review
							Course</a></li>
				</ul>
				<div class="tab-content">
					<div class="active tab-pane" id="courses">
						<input type="text" class="hidden" value="${courses.id }"
							id="coursesId">
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

						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">List Topic</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<c:choose>
									<c:when test="${empty listTopic}">
										<p>No Topic</p>
									</c:when>
									<c:otherwise>
										<table id="myTable" class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>ID</th>
													<th>Name</th>
													<th>Description</th>
													<th>Time Start</th>
													<th>Time End</th>
													<th>View Details</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${listTopic}" var="topicItem"
													varStatus="loop">
													<tr>
														<td align="center"><c:out value="${loop.index + 1}" /></td>
														<td>${topicItem.name}</td>
														<td>${topicItem.description}</td>
														<td>${coursesItem.timeStart}</td>
														<td>${coursesItem.timeEnd}</td>
														<td align="center"><a
															href="<c:url value="/trainee/topic/${topicItem.id}/show" />"
															title="Show Topic"> <i class="fa fa-search"></i>
														</a></td>
													<tr>
												</c:forEach>
											</tbody>
										</table>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="reviewcourses">

						<div id="showData">
							<c:if test="${not empty reviewCourses}">
								<input id="showrate" type="text" class="rating rating-loading"
									data-size="xs" data-min="0" data-max="5" data-step="1"
									data-readonly="true" value="${reviewCourses.star}">
								<div class="form-group" id="formContent">
									<label>${reviewCourses.trainee.name}</label>
									<p>${reviewCourses.review}</p>
								</div>
							</c:if>
						</div>

						<div class="box box-primary">
							<div class="box-body">
								<div class="form-group" id="formRate">
									<input id="rate" type="text" class="rating" data-size="xs"
										data-min="0" data-max="5" data-step="1"> <span
										class="control-label" id="rateResponse"></span>
								</div>
								<div class="form-group" id="formContent">
									<label>Review Content</label>
									<textarea class="form-control" rows="3"
										placeholder="Enter review ..." id="content"></textarea>
									<span class="control-label" id="contentResponse"></span>
								</div>
							</div>
							<div class="box-footer">
								<button type="submit" onclick="sendReview()"
									class="btn btn-primary">
									<i class="fa fa-spin fa-refresh" id="ajax-loading"></i>&nbsp;
									Review courses
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /.tab-pane -->
			</div>
			<!-- /.tab-content -->
		</div>
		<!-- /.nav-tabs-custom -->
	</div>
	<!-- /.col -->
</section>

<script>
	$(document).ready(function() {
		$('#ajax-loading').hide();
		$("#myTable").DataTable();
	});

	function sendReview() {
		var data = {}
		var rate = $("#rate").val();
		var content = $("#content").val();
		var coursesId = $("#coursesId").val();

		if (rate == 0) {
			$('#formRate').addClass('has-error')
			$('#rateResponse').html("Rating is required");
			return;
		}

		if (content == '') {
			$('#formContent').addClass('has-error')
			$('#contentResponse').html("Content review is required");
			return;
		}

		$('#ajax-loading').show();

		data["rate"] = rate;
		data["content"] = content;
		data["coursesId"] = coursesId;

		$.ajax({
			url : "/tms/ajax/reviewCourses",
			type : 'POST',
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : data,
			dataType : 'text',
			success : function(data) {
				$('#ajax-loading').hide();
			},
			complete : function(r) {
				console.log(r.responseText);
				if(r.responseText != ''){
					$('#showData').empty();
					$('#showData').append(r.responseText);
					$('#rate').rating('reset');
					$("#content").val('');
				}
			},
			error : function(e) {
			}
		});
	}
</script>