<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="login-box">
	<div class="login-logo">
		<b>TMS Login</b>
	</div>
	<!-- /.login-logo -->
	<div class="login-box-body">
		<p class="login-box-msg">Sign in to start your session</p>

		<c:if test="${param.error == 'true'}">
			<div class="alert alert-error" id="view-error">
				<strong>Login Failed!!!</strong>
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
		
		<c:if test="${not empty success}">
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">×</button>
				<i class="icon fa fa-check"></i> ${success}
			</div>
		</c:if>

		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">×</button>
				<i class="icon fa fa-exclamation-triangle"></i> ${error}
			</div>
		</c:if>

		<c:url value="/j_spring_security_check" var="login_action" />
		<form action="${login_action }" method="post">
			<div class="form-group has-feedback">
				<input type="email" class="form-control" placeholder="Email"
					name="email"> <span
					class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" class="form-control" placeholder="Password"
					name="password"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="row">
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<label> <input type="checkbox"> Remember Me
						</label>
					</div>
				</div>
				<!-- /.col -->
				<div class="col-xs-4">
					<button type="submit" class="btn btn-primary btn-block btn-flat">Sign
						In</button>
				</div>
				<!-- /.col -->
			</div>
		</form>
		<a href="<c:url value="/user/forgotPassword"/>">I forgot my
			password</a>
	</div>
	<!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script>
	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});
</script>