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
		<li class="active">Add new trainer</li>
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
				<c:url value="/admin/trainerManager/add" var="action" />
				<form:form action="${action}" method="POST" accept-charset="UTF-8"
					modelAttribute="trainer">
					<div class="box-body">
						<div class="row">
							<div class="col-xs-6">
								<c:set var="nameHasBindError">
									<form:errors path="name" />
								</c:set>
								<div class="form-group ${not empty nameHasBindError ? 'has-error' :''}" id="formName">
									<label>Name</label>
									<form:input path="name" type="text" class="form-control"
										placeholder="Enter name" id="name" onblur="sendTrainerRequest('fName');" />
									<span class="control-label" id="nameResponse"></span>
									<form:errors path="name" class="control-label" />
								</div>
							</div>
							<div class="col-xs-6">
								<c:set var="emailHasBindError">
									<form:errors path="email" />
								</c:set>
								<div
									class="form-group ${not empty emailHasBindError ? 'has-error' :''}" id="formEmail">
									<label>Email address</label>
									<form:input path="email" class="form-control"
										placeholder="Enter email" id="email" onblur="sendTrainerRequest('fEmail');"/>
									<span class="control-label" id="emailResponse"></span>
									<form:errors path="email" class="control-label" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6">
								<c:set var="passwordHasBindError">
									<form:errors path="password" />
								</c:set>
								<div
									class="form-group ${not empty passwordHasBindError ? 'has-error' :''}" id="formPassword">
									<label>Password</label>
									<form:input path="password" type="password"
										class="form-control" placeholder="Enter password" id="password" onblur="sendTrainerRequest('fPassword');"/>
									<span class="control-label" id="passwordResponse"></span>
									<form:errors path="password" class="control-label" />
								</div>
							</div>
							<div class="col-xs-6">
								<c:set var="repasswordHasBindError">
									<form:errors path="confirmPassword" />
								</c:set>
								<div
									class="form-group ${not empty repasswordHasBindError ? 'has-error' :''}" id="formConfirmPassword">
									<label>Confirm password</label>
									<form:input path="confirmPassword" type="password"
										class="form-control" placeholder="Enter comfirm-password" id="confirmPassword" onKeyUp="sendTrainerRequest('fConfirmPassword');" />
									<span class="control-label" id="confirmPasswordResponse"></span>
									<form:errors path="confirmPassword" class="control-label" />
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-plus"></i> Add new trainer
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