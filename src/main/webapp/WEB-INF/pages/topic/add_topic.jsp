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
					<h3 class="box-title">General Elements</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<c:url value="/topic/add" var="post_courses" />
					<form role="form" method="post" action="${post_courses}">
						<input class="hidden" value="${topic.id }" name="topicId">

						<!-- select -->
						<div class="form-group">
							<label>Courses</label> <select class="form-control"
								name="coursesId">
								<c:if test="${topic.id != null}">
									<option value="${topic.courses.id }">${topic.courses.name }</option>
								</c:if>

								<c:forEach items="${listCourses }" var="courses">
									<option value="${courses.id }">${courses.name }</option>
								</c:forEach>
							</select>
						</div>




						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Time start: </label> <input type="time"
										class="form-control" name="timeStart">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label>Time end: </label> <input type="time"
										class="form-control" name="timeEnd">
								</div>
							</div>

						</div>

						<div class="form-group">
							<p>
								<label>Weekdays: </label>
							</p>
							M <input type="checkbox"> T<input type="checkbox"> W<input
								type="checkbox"> Th<input type="checkbox"> W<input
								type="checkbox"> Sa<input type="checkbox"> S<input
								type="checkbox">
						</div>


						<div class="form-group">
							<label>Trainer</label> <select class="form-control"
								name="coursesId">
								<c:if test="${topic.id != null}">
									<option value="${topic.trainer.id }">${topic.trainer.name }</option>
								</c:if>

								<c:forEach items="${listTrainer }" var="trainer">
									<option value="${trainer.id }">${trainer.name }</option>
								</c:forEach>
							</select>
						</div>


						<!-- text input -->
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Name" name="name" value="${topic.name }">
						</div>

						<!-- textarea -->
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" rows="5" placeholder="Description"
								name="description">${topic.description }</textarea>
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
