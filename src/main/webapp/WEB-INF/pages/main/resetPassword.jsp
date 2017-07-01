<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
	
<div class="login-box">
	<div class="login-logo">
		<b>Reset Password</b>
	</div>
	<!-- /.login-logo -->
	<div class="login-box-body" >
		<sec:authorize access="hasAuthority('CHANGE_PASSWORD_PRIVILEGE')"></sec:authorize>
		<p class="login-box-msg">Change Your Password</p>

		<c:url value="/user/savePassword" var="action" />
		<form:form action="${action}" method="POST" onsubmit="return validatorForm()">
			<div class="form-group has-feedback" id="formPassword">
				<input type="password" class="form-control" placeholder="Password"
					id="password" name = "password"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span> <span
					class="control-label" id="passwordResponse"></span>
			</div>
			<div class="form-group has-feedback" id="formConfirmPassword">
				<input type="password" class="form-control"
					placeholder="Confirm Password" id="confirmPassword"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span> <span
					class="control-label" id="confirmPasswordResponse"></span>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<input type="submit" class="btn btn-primary btn-block btn-flat"
						value="Reset password" />
				</div>
			</div>
		</form:form>
	</div>
	<!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script>
	function validatorForm() {
		var check = 1;
		var password = $('#password').val();
		var confirmPassword = $('#confirmPassword').val();
		
		console.log(password);
		console.log(confirmPassword);

		if (password == '') {
			$('#passwordResponse').html('');
			$('#formPassword').addClass('has-error')
			$('#passwordResponse').html('Password is required');
			check = false;
		}

		if (password != '' && password.length < 8) {
			$('#passwordResponse').html('');
			$('#formPassword').addClass('has-error')
			$('#passwordResponse').html('Password length must be greater than 8 characters');
			check = false;
		}
		
		if (confirmPassword == '') {
			$('#confirmPasswordResponse').html('');
			$('#formConfirmPassword').addClass('has-error')
			$('#confirmPasswordResponse').html('Confirm password is required');
			check = false;
		}
		
		if (confirmPassword != password) {
			$('#confirmPasswordResponse').html('');
			$('#formConfirmPassword').addClass('has-error')
			$('#confirmPasswordResponse').html('Confirm password not matching');
			check = false;
		}
		
		return check;
	}
</script>