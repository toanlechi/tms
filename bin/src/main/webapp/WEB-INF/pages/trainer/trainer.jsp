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

					<h3 class="profile-username text-center">${trainer.name }</h3>

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
				<ul class="nav nav-tabs">
					<li class="active"><a href="#timeline" data-toggle="tab">Schedule
					</a></li>
					<li><a href="#settings" data-toggle="tab">Profile</a></li>
				</ul>
				<div class="tab-content">

					<!-- /.tab-pane -->
					<div class="active tab-pane" id="timeline">
						<c:forEach items="${topics }" var="topic">


							<div class="callout callout-default">
								<h4>${topic.name }</h4>
								<div class="row ">
									<div class="col-md-6">
										<div class="col-sm-5 text-right">
											<label>Time start: </label>
										</div>
										<div class="col-sm-7">
											<p>${topic.timeStart }</p>
										</div>
									</div>

									<div class="col-md-6">
										<div class="col-sm-5 text-right">
											<label>Time end: </label>
										</div>
										<div class="col-sm-7">
											<p>${topic.timeEnd }</p>
										</div>
									</div>


								</div>

								<div class="row">

									<div class="col-md-2  text-right">
										<label>Day: </label>
									</div>
									<div class="col-md-10">
										<div class="checkbox icheck inline">

											<label> <input type="checkbox" disabled name="mo"
												${topic.mo } id="input-mo"> Mo
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 20px;">
											<label> <input type="checkbox" disabled name="tu"
												${topic.tu } id="input-tu"> Tu
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 20px;">
											<label> <input type="checkbox" disabled name="we"
												${topic.we } id="input-we"> We
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 20px;">
											<label> <input type="checkbox" disabled name="th"
												${topic.th } id="input-th"> Th
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 20px;">
											<label> <input type="checkbox" disabled name="fr"
												${topic.fr } id="input-fr"> Fr
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 20px;">
											<label> <input type="checkbox" disabled name="sa"
												${topic.sa } id="input-sa"> Sa
											</label>
										</div>
										<div class="checkbox icheck inline" style="margin-left: 30px;">
											<label> <input type="checkbox" disabled name="su"
												${topic.su } id="input-su"> Su
											</label>
										</div>
									</div>
								</div>
							</div>
							<hr>
						</c:forEach>
					</div>
					<!-- /.tab-pane -->

					<div class="tab-pane" id="settings">
						<form class="form-horizontal" onsubmit="return validation()"
							action="#" method="post">
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
									<input type="email" class="form-control" id="inputEmail"
										value="${trainer.email }">
								</div>
							</div>
							<div class="form-group">
								<label for="inputName" class="col-sm-3 control-label">Password
									*</label>

								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword">
									<p class="error" hidden id="view-err-password"></p>
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
								<label for="inputName" class="col-sm-3 control-label">Re-New
									Password </label>

								<div class="col-sm-9">
									<input type="password" class="form-control"
										id="inputReNewPassword" placeholder="********">
									<p class="error" hidden id="view-err-re-new-password"></p>
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
				<!-- /.tab-content -->
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

		if ($("#inputPassword").val() == '') {
			$("#view-err-password").text("Filed is require!");
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
		data["education"] = $("#inputEducation").val();
		data["phone"] = $("#inputPhone").val();
		data["workingPlace"] = $("#inputWorkingPlace").val();

		$.ajax({
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "/tms/ajax/trainer/update",
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