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
					<form role="form" method="post" action="${post_courses}"
						onsubmit="return checkForm()">
						<input class="hidden" value="${courses.id }" name="coursesId">

						<!-- select -->
						<div class="form-group">
							<label>Select (*)</label> <select class="form-control"
								name="category" id="category">
								<option value="0" />
								<c:if test="${courses.id != null}">
									<option value="${courses.category.id }">${courses.category.name }</option>
								</c:if>

								<c:forEach items="${categories }" var="category">
									<option value="${category.id }">${category.name }</option>
								</c:forEach>
							</select>
							<p class="error" hidden id="view-err-category"></p>
						</div>

						<!-- text input -->
						<div class="form-group">
							<label>Name (*)</label> <input type="text" class="form-control"
								placeholder="Name" name="name" value="${courses.name }"
								id="name">
							<p class="error" hidden id="view-err-name"></p>
						</div>

						<!-- textarea -->
						<div class="form-group">
							<label>Description (*)</label>
							<textarea class="form-control" rows="5" placeholder="Description"
								name="description" id="description">${courses.description }</textarea>
							<p class="error" hidden id="view-err-description"></p>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary" id="btn-submit">Save</button>

						</div>
						
						<div class="text-right"><i class="text-right">(*) Field required</i></div>


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

	$("#name").change(function(event) {
		var data = {}
		data["name"] = $("#name").val();
		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/check_courses_name",
			data : data,
			dataType : 'text',
			timeout : 600000,
			success : function(data) {
				console.log(data);
				var label = $("#view-err-name");
				var btn_submit = $("#btn-submit");
				label.show();
				if (data == "false") {
					label.text("Category name isxists!");
					label.css("color", "red");
					btn_submit.prop('disabled', true);
				} else {
					label.hide();
					btn_submit.prop('disabled', false);
				}

			},
			error : function(e) {

			}
		});
	});

	function checkForm() {
		var check = true;
		if ($("#name").val() == '') {
			$("#view-err-name").text("Value is require!");
			$("#view-err-name").show();
			check = false;
		} else {
			$("#view-err-name").hide();
		}
		
		if ($("#category").val()==0){
			$("#view-err-category").text("Value is require!");
			$("#view-err-category").show();
			check = false;
		} else {
			$("#view-err-category").hide();
		}

		if ($("#description").val() == '') {
			$("#view-err-description").text("Value is require!");
			$("#view-err-description").show();
			check = false;
		} else {
			$("#view-err-description").hide();
		}
		
		return check;
	}
</script>
