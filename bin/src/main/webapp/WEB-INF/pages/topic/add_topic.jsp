<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Topic <small>Edit</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/topic" />"><i class="fa fa-file"></i>
				Topic</a></li>
		<li>Edit</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="row" style="margin-top: 30px;">
		<div class="col-sm-12 col-md-6 col-md-offset-3">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Topic info</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<c:url value="/topic/add" var="post_courses" />
					<form role="form" method="post" action="${post_courses}"
						onsubmit="return checkSubmit()">
						<input class="hidden" value="${topic.id }" name="topicId">

						<!-- select -->
						<div class="form-group">
							<label>Courses *</label> <select class="form-control"
								name="coursesId" id="coursesId">

								<option value="${topic.courses.id }">${topic.courses.name }</option>

								<c:forEach items="${listCourses }" var="courses">
									<option value="${courses.id }">${courses.name }</option>
								</c:forEach>
							</select>
							<p class="error" hidden id="view-err-courses"></p>
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Time start *</label>
									<div class='input-group date' id='datetimepicker3'>
										<input type='text' class="form-control" name="timeStart"
											id="timeStart" value="${topic.timeStart }" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-time"></span>
										</span>
									</div>
									<p class="error" hidden id="view-err-time-start"></p>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label>Time end *</label>
									<div class='input-group date' id='datetimepickerEnd'>
										<input type='text' class="form-control" name="timeEnd"
											id="timeEnd"  value="${topic.timeEnd }" /> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-time"></span>
										</span>
									</div>
									<p class="error" hidden id="view-err-time-end"></p>
								</div>
							</div>
						</div>

						<div class="form-group">
							<p>
								<label>Weekdays * </label>
							</p>
							<div class="row text-center">
								<div class="checkbox icheck inline">

									<label> <input type="checkbox" name="mo" ${day2 }
										id="input-mo"> Mo
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 20px;">
									<label> <input type="checkbox" name="tu" ${day3 }
										id="input-tu"> Tu
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 20px;">
									<label> <input type="checkbox" name="we" ${day4 }
										id="input-we"> We
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 20px;">
									<label> <input type="checkbox" name="th" ${day5 }
										id="input-th"> Th
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 20px;">
									<label> <input type="checkbox" name="fr" ${day6 }
										id="input-fr"> Fr
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 20px;">
									<label> <input type="checkbox" name="sa" ${day7 }
										id="input-sa"> Sa
									</label>
								</div>
								<div class="checkbox icheck inline" style="margin-left: 30px;">
									<label> <input type="checkbox" name="su" ${dayCN }
										id="input-su"> Su
									</label>
								</div>
							</div>
							<p class="error" hidden id="view-err-day"></p>
						</div>

						<!-- text input -->
						<div class="form-group">
							<label>Name *</label> <input type="text" class="form-control"
								id="name" name="name" value="${topic.name }">
							<p class="error" hidden id="view-err-name"></p>
						</div>

						<div class="form-group">
							<label>Trainer *</label> <select class="form-control"
								name="trainerId" id="trainerId">
								<option value="${topic.trainer.id }">${topic.trainer.name }</option>

								<c:forEach items="${listTrainer }" var="trainer">
									<option value="${trainer.id }">${trainer.name }</option>
								</c:forEach>
							</select>
							<p class="error" hidden id="view-err-trainer"></p>
						</div>



						<!-- textarea -->
						<div class="form-group">
							<label>Description *</label>
							<textarea class="form-control" rows="5" name="description"
								id="description">${topic.description }</textarea>
							<p class="error" hidden id="view-err-description"></p>
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary">Save</button>

						</div>

						<div class="text-right">
							<i class="text-right">(*) Field required</i>
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

<script type="text/javascript">
	$(function() {
		$("#category-table").DataTable();

	});

	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});

	$(function() {
		$('#datetimepicker3').datetimepicker({
			format : 'HH:m'
		});

		$('#datetimepickerEnd').datetimepicker({
			format : 'HH:m',

			disabledTimeIntervals : [ [ moment({
				h : 0
			}), moment({
				h : 23
			}) ] ]
		});
	});

	$("#datetimepicker3").on('dp.change', function(e) {
		var timeStart = $('#timeStart').val();
		var hour = parseInt(timeStart.substring(0, 2)) + 1;
		console.log(hour);

		$('#datetimepickerEnd').data("DateTimePicker").destroy();
		$('#datetimepickerEnd').datetimepicker({
			format : 'HH:m',
			disabledHours : [ 0, 1, 2, 3, 4, 5 ],
			disabledTimeIntervals : [ [ moment({
				h : 0
			}), moment({
				h : hour
			}) ] ]
		});

	});

	function checkSubmit() {
		var check = true;
		if ($("#timeStart").val() == '') {
			$("#view-err-time-start").text("Value is require!");
			$("#view-err-time-start").show();
			check = false;
			;
		} else {
			$("#view-err-time-start").hide();
		}

		if ($("#timeEnd").val() == '') {
			$("#view-err-time-end").text("Value is require!");
			$("#view-err-time-end").show();
			check = false;
			;
		} else {
			$("#view-err-time-end").hide();
		}

		if ($("#name").val() == '') {
			$("#view-err-name").text("Value is require!");
			$("#view-err-name").show();
			check = false;
		} else {
			$("#view-err-name").hide();
		}

		if ($("#description").val() == '') {
			$("#view-err-description").text("Value is require!");
			$("#view-err-description").show();
			check = false;
		} else {
			$("#view-err-description").hide();
		}

		if ($("#coursesId").val() == 0) {
			$("#view-err-courses").text("Value is require!");
			$("#view-err-courses").show();
			check = false;
		} else {
			$("#view-err-courses").hide();
		}

		if ($("#trainerId").val() == 0) {
			$("#view-err-trainer").text("Value is require!");
			$("#view-err-trainer").show();
			check = false;
		} else {
			$("#view-err-trainer").hide();
		}

		if (!$("#input-mo").is(":checked") && !$("#input-tu").is(":checked")
				&& !$("#input-we").is(":checked")
				&& !$("#input-th").is(":checked")
				&& !$("#input-fr").is(":checked")
				&& !$("#input-sa").is(":checked")
				&& !$("#input-su").is(":checked")) {
			$("#view-err-day").text("Value is require!");
			$("#view-err-day").show();
			check = false;
		} else {
			$("#view-err-day").hide();
		}

		return check;

	}
</script>
