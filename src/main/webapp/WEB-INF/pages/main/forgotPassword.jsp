<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="login-box">
	<div class="login-logo">
		<a href="../../index2.html"><b>Admin</b>LTE</a>
	</div>
	<!-- /.login-logo -->
	
	<div id="success" class="alert alert-success alert-dismissible" style="display:none;">
		<button type="button" class="close" data-dismiss="alert"
			aria-hidden="true">×</button>
		<i class="icon fa fa-check"></i> Check your email!
	</div>

	<div id="error" class="alert alert-danger alert-dismissible" style="display:none;">
		<button type="button" class="close" data-dismiss="alert"
			aria-hidden="true">×</button>
		<i class="icon fa fa-exclamation-triangle"></i> Email not exits!
	</div>
	
	<div class="login-box-body">
		<p class="login-box-msg">Your email address</p>

		<div class="form-group has-feedback" id="formEmail">
			<input type="email" class="form-control" placeholder="name@email.com"
				name="email" id="email" ><span
				class="glyphicon glyphicon-envelope form-control-feedback"></span>
			<span class="control-label" id="emailResponse"></span>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<button type="submit" onclick="sendEmail()"
					class="btn btn-primary btn-block btn-flat">Send instruction</button>
			</div>
			<!-- /.col -->
		</div>
	</div>
	<!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script>
	function sendEmail() {
		var data = {}
		var email = $("#email").val();
		var regMail = /^[A-Za-z0-9]+([_\.\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\.\-]?[A-Za-z0-9]+)*(\.[A-Za-z]+)+$/;
		
		if(email == ''){
			$('#formEmail').addClass('has-error')
			$('#emailResponse').html("Email is required");
			return;
		}
		
		if(regMail.test(email) == false){
			$('#formEmail').addClass('has-error')
			$('#emailResponse').html("Email is not valid type");
			return;
		}
		
		$('#emailResponse').remove();
		$('#formEmail').removeClass('has-error');
		$('#formEmail').addClass('has-success');
		
		data["email"] = $("#email").val();
		$.ajax({
			url : "/tms/ajax/resetPassword",
			type : 'POST',
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : data,
			dataType : 'text',
			success : function(data) {
			},
			complete : function(r) {
				if (r.responseText == "true") {
					$("#success").hide();
					$("#success").show();
				} else {
					$("#error").hide();
					$("#error").show();
				}
			},
			error : function(e) {
			}
		});
	}
</script>