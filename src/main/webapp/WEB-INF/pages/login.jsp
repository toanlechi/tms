





<jsp:include page="templates/include_top.jsp">
	<jsp:param value="Login" name="title" />
</jsp:include>
<%--Begin Body --%>







<!-- Full Width Column -->

<div class="container">
	<div class="row">
		<!-- login -->
		<div class="col-md-6">
			<div class="login-box">
				<div class="login-logo">
					<a href="../../index2.html"><b>TMS</b> Login</a>
				</div>
				<!-- /.login-logo -->
				<div class="login-box-body">
					<p class="login-box-msg">Sign in to start your session</p>

					<form:form action="../../index2.html" method="post">
						<div class="form-group has-feedback">
							<div>
								<form:input path="email" type="email" class="form-control"
									placeholder="Email" />
							</div>
							<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<div>
								<form:password path="password" type="password"
									class="form-control" placeholder="Password" />
							</div>
							<span class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<div class="row">
							<div class="col-xs-8">
								<div class="checkbox icheck">
									
										<input path="checkbox" value="RememberMe" type="checkbox"/>
										Remember Me
									
								</div>
							</div>
							<!-- /.col -->
							<div class="col-xs-4">
								<form:button type="submit"
									class="btn btn-primary btn-block btn-flat">Login</form:button>
							</div>
							<!-- /.col -->
						</div>
					</form:form>

					<a href="#">I forgot my password</a><br>

					<form:checkbox path="" />
				</div>
				<!-- /.login-box-body -->
			</div>

		</div>
		<div class="col-md-6"></div>


	</div>





</div>

<!-- ./wrapper -->
<script>
	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});
</script>





<%-- End Body --%>
<jsp:include page="templates/include_top.jsp"></jsp:include>