<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h4>Topic Info</h4>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/trainee/courses" />"><i
				class="fa fa-folder-open-o"></i> Courses Manager</a></li>
		<li class="active">View details topic</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- /.col -->
		<div class="col-md-12">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#courses" data-toggle="tab">Topic
							Details</a></li>
					<li><a href="#reviewcourses" data-toggle="tab">Trainer
							Details</a></li>
				</ul>
				<div class="tab-content">
					<div class="active tab-pane" id="courses">
						<input type="text" class="hidden" value="${topic.id }"
							id="topicId">
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
								<strong>Description:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.description }</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Create At:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.createdAt }</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Time Start:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.timeStart }</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Time End:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.timeEnd }</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Courses Name:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.courses.name}</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Trainer Name:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.trainer.name}</p>
							</div>
						</div>
					</div>
					<!-- /.tab-pane -->
					<div class="tab-pane" id="reviewcourses">
						<div class="row">
							<div class="col-sm-2">
								<strong>Name:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.trainer.name}</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2">
								<strong>Email:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.trainer.email}</p>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-2">
								<strong>Education:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.trainer.education}</p>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-2">
								<strong>Working Place:</strong>
							</div>
							<div class="col-sm-10">
								<p id="name-label">${topic.trainer.workingPlace}</p>
							</div>
						</div>
						<div id="showData">
							<c:if test="${not empty reviewTopic}">
								<input id="showrate" type="text" class="rating rating-loading"
									data-size="xs" data-min="0" data-max="5" data-step="1"
									data-readonly="true" value="${reviewTopic.star}">
								<div class="form-group" id="formContent">
									<label>${reviewTopic.trainee.name}</label>
									<p>${reviewTopic.review}</p>
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
									Review trainer
								</button>
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
	</div>
</section>

<script>
	$(document).ready(function() {
		$('#ajax-loading').hide();
	});

	function sendReview() {
		var data = {}
		var rate = $("#rate").val();
		var content = $("#content").val();
		var topicId = $("#topicId").val();

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
		data["topicId"] = topicId;

		$.ajax({
			url : "/tms/ajax/reviewTopic",
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