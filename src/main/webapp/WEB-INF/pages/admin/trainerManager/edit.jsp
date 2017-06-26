<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h4>Trainer Manager</h4>
	<ol class="breadcrumb">
		<li><a href="<c:url value="/admin/trainerManager" />"><i
				class="fa fa-folder-open-o"></i> Trainer Manager</a></li>
		<li class="active">Edit trainer</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-10 col-md-offset-1">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Trainer Information</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<c:url value="/admin/trainerManager/update" var="action" />
				<form:form action="${action}" method="POST" accept-charset="UTF-8"
					modelAttribute="trainer">
					<form:hidden path="id" />
					<form:hidden path="password" />
					<form:hidden path="confirmPassword" />
					<form:hidden path="role" />
					<form:hidden path="status" />
					<form:hidden path="createdAt" />
					<form:hidden path="updatedAt" />
					<form:hidden path="type" />
					<form:hidden path="education" />
					<form:hidden path="workingPlace" />
					<form:hidden path="phone" />
					<div class="box-body">
						<div class="row">
							<div class="col-xs-6">
								<c:set var="nameHasBindError">
									<form:errors path="name" />
								</c:set>
								<div
									class="form-group ${not empty nameHasBindError ? 'has-error' :''}"
									id="formName">
									<label>Name</label>
									<form:input path="name" type="text" class="form-control"
										placeholder="Enter name" id="name"
										onblur="sendTrainerRequest('fName');" />
									<span class="control-label" id="nameResponse"></span>
									<form:errors path="name" class="control-label" />
								</div>
							</div>
							<div class="col-xs-6">
								<c:set var="emailHasBindError">
									<form:errors path="email" />
								</c:set>
								<div
									class="form-group ${not empty emailHasBindError ? 'has-error' :''}"
									id="formEmail">
									<label>Email address</label>
									<form:input path="email" class="form-control"
										placeholder="Enter email" id="email"
										onblur="sendTrainerRequest('fEmail');" />
									<span class="control-label" id="emailResponse"></span>
									<form:errors path="email" class="control-label" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6">
								<div class="form-group">
									<label>Edit Status</label> <select name="st"
										class="form-control">
										<option value="active"
											${trainer.status eq true ? 'selected' : ''}>Active</option>
										<option value="block"
											${trainer.status eq false ? 'selected' : ''}>Block</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-edit"></i> Update trainer
						</button>
					</div>
				</form:form>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<script>
	function sendTrainerRequest(fieldValue) {
		if (fieldValue == 'fName') {
			var name = $("#name").val();

			$.ajax({
				url : "/tms/ajax/trainer/name",
				type : 'POST',
				contentType : "application/json",
				data : {
					name : name,
				},
				dataType : 'json',
				success : function(data) {
				},
				complete : function(r) {
					$('#formName').addClass('has-error')
					$('#nameResponse').html(r.responseText);
					if (r.responseText == '') {
						$('#formName').removeClass('has-error');
						$('#formName').addClass('has-success');
					}
				},
				error : function(e) {
				}
			});
		}

		if (fieldValue == 'fEmail') {
			var email = $("#email").val();

			$.ajax({
				url : "/tms/ajax/trainer/email",
				type : 'POST',
				contentType : "application/json",
				data : {
					email : email,
				},
				dataType : 'json',
				success : function(data) {
				},
				complete : function(r) {
					$('#formEmail').addClass('has-error');
					$('#emailResponse').html(r.responseText);
					if (r.responseText == '') {
						$('#formEmail').removeClass('has-error');
						$('#formEmail').addClass('has-success');
					}
				},
				error : function(e) {
				}
			});
		}
	}
</script>