<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="login-box">
	<div class="login-logo">
		<a href="../../index2.html"><b>Admin</b>LTE</a>
	</div>
	<!-- /.login-logo -->
	<div class="login-box-body">
		<p class="login-box-msg">Reset Password</p>

		<c:url value="/user/savePassword" var="action" />
		<form:form action="${action}" method="POST" modelAttribute="user">
			<form:hidden path="id" />
			<form:hidden path="name" />
			<form:hidden path="email" />
			<form:hidden path="password" />
			<form:hidden path="confirmPassword" />
			<form:hidden path="role" />
			<form:hidden path="status" />
			<form:hidden path="token" />
			<form:hidden path="createdAt" />
			<form:hidden path="updatedAt" />
			<div class="form-group has-feedback">
				<input type="password" class="form-control" placeholder="Password"
					name="password"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type="password" class="form-control"
					placeholder="Confirm Password" name="confirmPassword"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<button type="submit" class="btn btn-primary btn-block btn-flat">Reset
						password</button>
				</div>
			</div>
		</form:form>
	</div>
	<!-- /.login-box-body -->
</div>
<!-- /.login-box -->