<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

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

	<div class="row">
		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img class="profile-user-img img-responsive img-circle"
						src='<c:url value="/static/images/avatar5.png" />'
						alt="User profile picture">

					<h3 class="profile-username text-center">${trainingStaff.name }</h3>

					<p class="text-muted text-center">TrainingStaff</p>

					<ul class="list-group list-group-unbordered">
						<li class="list-group-item"><b>Category created</b> <a
							class="pull-right">${categoryCreated }</a></li>
						<li class="list-group-item"><b>Courses created</b> <a
							class="pull-right">${coursesCreated }</a></li>
						<li class="list-group-item"><b>Topic created</b> <a
							class="pull-right">${topicCreated }</a></li>
						<li class="list-group-item"><b>Trainee created</b> <a
							class="pull-right">13,287</a></li>
					</ul>

				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->


		</div>
		<!-- /.col -->
		<div class="col-md-9">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Profile</h3>
				</div>
				<div class="box-body box-profile">
					<c:url value="#" var="action" />
					<form class="form-horizontal" onsubmit="return validator()"
						accept-charset="UTF-8" action="${action }" method="post">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">Name
								*</label>
							<div class="col-sm-9 col-md-8">
								<input type="text" class="form-control" name="name"
									id="inputName" value="${trainingStaff.name }" />
							</div>
							<div class="col-sm-6 col-sm-offset-3 ">
								<p class="error" hidden id="view-err-name"></p>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9 col-md-8">
								<input disabled class="form-control"
									value="${trainingStaff.email }" id="inputEmail" />
							</div>
						</div>
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label">Password
								*</label>

							<div class="col-sm-9 col-md-8">
								<input type="password" class="form-control" name="password"
									id="inputPassword" />
							</div>
							<div class="col-sm-6 col-sm-offset-3 ">
								<p class="error" hidden id="view-err-password"></p>
							</div>
						</div>

						<div class="form-group">
							<label for="inputSkills" class="col-sm-3 control-label">New-password</label>

							<div class="col-sm-9 col-md-8">
								<input type="password" class="form-control"
									id="inputNewPassword" name="newPassword" placeholder="********" />
							</div>
							<div class="col-sm-6 col-sm-offset-3 ">
								<p class="error" hidden id="view-err-new-password"></p>
							</div>
						</div>

						<div class="form-group">
							<label for="inputSkills" class="col-sm-3 control-label">Re-New
								password</label>

							<div class="col-sm-9 col-md-8">
								<input type="password" class="form-control" name="reNewPassword"
									id="inputReNewPassword" placeholder="********" />
							</div>
							<div class="col-sm-6 col-sm-offset-3 ">
								<p class="error" hidden id="view-err-re-new-password"></p>
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
			<!-- /.tab-content -->

		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

</section>
<!-- /.content -->

<script>
	function validator() {
		var check = true;

		if ($("#inputName").val() == '') {
			$("#view-err-name").text("Field is require!");
			$("#view-err-name").show();
			check = false;
		} else {
			$("#view-err-name").hide();
		}

		if ($("#inputPassword").val() == '') {
			$("#view-err-password").text("Field is require!");
			$("#view-err-password").show();
			check = false;
		} else {
			$("#view-err-password").hide();
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

		if ($("#inputReNewPassword").val() != ''
				&& $("#inputReNewPassword").val() != $("#inputNewPassword")
						.val()) {
			$("#view-err-re-new-password").text(
					"Confirm password not matching!");
			$("#view-err-re-new-password").show();
			check = false;
		} else {
			$("#view-err-re-new-password").hide();
		}

		if (check) {
			update();
		}
		return false;
	}

	function update() {
		var data = {}
		data["name"] = $("#inputName").val();
		data["password"] = $("#inputPassword").val();
		data["newPassword"] = $("#inputNewPassword").val();
		data["reNewPassword"] = $("#inputReNewPassword").val();

		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/trainingStaff/update",
			data : data,
			dataType : 'text',
			timeout : 600000,
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				alert(e);
			}
		});
	}
</script>