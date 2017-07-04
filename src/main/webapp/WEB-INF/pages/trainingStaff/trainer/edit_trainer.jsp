<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Trainer <small><c:out value="${demo}" /></small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Trainer</a></li>
		<li>Edit</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="row">
		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img class="profile-user-img img-responsive img-circle"
						src="<c:url value="/static/images/avatar3.png" />"
						alt="User profile picture">

					<h3 class="profile-username text-center" id="view-text-name">${trainer.name }</h3>

					<p class="text-muted text-center">Trainer</p>

					<ul class="list-group list-group-unbordered">
						<li class="list-group-item"><b>Assigned topic</b> <a
							class="pull-right">${countTopic }</a></li>

					</ul>


				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->


		</div>
		<!-- /.col -->
		<div class="col-md-9">
			<div class="nav-tabs-custom">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Profile</h3>
					</div>


					<div class="box-body">
						<div class="tab-pane" id="settings">
							<form class="form-horizontal" onsubmit="return validation()"
								action="#" method="post">
								<input type="text" class="hidden" value="${trainer.id }"
									id="trainerId">

								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">Name
										*</label>

									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputName"
											value="${trainer.name }">
										<p class="error" hidden id="view-err-name"></p>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label">Email</label>

									<div class="col-sm-9">
										<input type="email" disabled class="form-control"
											id="inputEmail" value="${trainer.email }">
									</div>
								</div>


								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">New
										Password </label>

									<div class="col-sm-9">
										<input type="password" class="form-control"
											id="inputNewPassword" placeholder="********">
										<p class="error" hidden id="view-err-new-password"></p>
									</div>
								</div>

								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">Education
									</label>

									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputEducation"
											value="${trainer.education }">
									</div>
								</div>

								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">Phone
									</label>

									<div class="col-sm-9">
										<input type="number" class="form-control" id="inputPhone"
											value="${trainer.phone }">
									</div>
								</div>

								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">Wroking
										Place </label>

									<div class="col-sm-9">
										<input type="text" class="form-control" id="inputWorkingPlace"
											value="${trainer.workingPlace }">
									</div>
								</div>



								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-danger">Save</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.tab-pane -->
					</div>
				</div>
			</div>
			<!-- /.nav-tabs-custom -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

</section>
<!-- /.content -->

<script>
	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});

	function validation() {
		var check = true;

		if ($("#inputName").val() == '') {
			$("#view-err-name").text("Filed is require!");
			$("#view-err-name").show();
			check = false;
		} else {
			$("#view-err-name").hide();
		}

		if ($("#inputNewPassword").val() != ''
				&& $("#inputNewPassword").val().length < 8) {
			$("#view-err-new-password").text(
					"Password length must be greater than 8 characters!");
			$("#view-err-new-password").show();
			check = false;
		} else {
			$("#view-err-new-password").hide();
		}

		if (check) {
			update();
		}
		return false;

	}

	function update() {
		var data = {}
		data["name"] = $("#inputName").val();
		data["newPassword"] = $("#inputNewPassword").val();
		data["education"] = $("#inputEducation").val();
		data["phone"] = $("#inputPhone").val();
		data["workingPlace"] = $("#inputWorkingPlace").val();
		data["trainingStaff"] = 'true';
		data["trainerId"] = $("#trainerId").val();

		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/trainer/update",
			data : data,
			dataType : 'text',
			timeout : 600000,
			success : function(data) {
				if (data == 'Update complete!') {
					$("#view-text-name").text($("#inputName").val());
				}
				alert(data);
			},
			error : function(e) {
				alert(e);
			}
		});
	}
</script>