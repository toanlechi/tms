
<jsp:include page="templates/include_top.jsp">
	<jsp:param value="Demo" name="title" />
</jsp:include>
<%--Begin Body --%>

<div class="wrapper">
	<jsp:include page="templates/include_menu.jsp"></jsp:include>

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header"></section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Information Training Staff</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form class="form-horizontal">
							
							<div class="box-body">

								<div class="form-group">
									<div class="col-xs-3" style="text-align: right;">
										<form:label path="nameTitle" for="inputName"
											class="control-label">TrainingStaff name:</form:label>
									</div>

									<div class="col-xs-6">
										<form:label path="name" id="text-name"
											cssClass="control-label">TrainingStaff
											Name</form:label>
										<div hidden id="edit-name">

											<div>
												<form:input path="name" type="text" class="form-control"
													id="inputName" placeholder="Enter name trainingStaff" />
											</div>

											<div class="col-sm-12 tms-form-btn-edit">
												<form:button id="hideEditName" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-xs-3">
										<!-- <button id="showEditName" class="btn-link">Edit</button> -->
										<a id="showEditName" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>



								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="userNameTitle" for="inputUser"
											class="control-label">Username:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="userName" id="text-user"
											class="control-label">Username</form:label>
										<div hidden id="edit-user">
											<div>
												<form:input path="useName" type="user" class="form-control"
													id="inputUser" placeholder="Enter user name" />
											</div>
											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditUser" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<a id="showEditUser" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="emailTitle" for="inputEmail"
											class=" control-label">Email:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="email" id="text-email" class="control-label">Email@gmail.com</form:label>
										<div hidden id="edit-email">

											<div>
												<form:input path="email" type="email" class="form-control"
													id="inputEmail" placeholder="Enter email" />
											</div>

											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditEmail" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<a id="showEditEmail" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="passwordTitle" for="inputPass"
											class=" control-label">Password:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="password" id="text-pass"
											class="control-label">********</form:label>
										<div hidden id="edit-pass">

											<div>
												<form:password path="password" type="password"
													class="form-control tms-form-btn-edit" id="inputPass"
													placeholder="Enter the old password" />
											</div>

											<div>
												<form:password path="password" type="password"
													class="form-control tms-form-btn-edit" id="inputPass"
													placeholder="Enter a new password" />
											</div>

											<div>
												<form:password path="password" type="password"
													class="form-control tms-form-btn-edit " id="inputPass"
													placeholder="Enter a new password" />
											</div>

											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditPass" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">

										<a id="showEditPass" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="ageTitle" for="inputAge"
											class="control-label">Age:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="age" id="text-age" class="control-label">Age</form:label>
										<div hidden id="edit-age">
											<div>
												<form:input path="age" type="text" class="form-control"
													id="inputAge" placeholder="Enter Age" />
											</div>
											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditAge" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">

										<a id="showEditAge" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="dateOfBirthTitle" for="inputDate"
											class="control-label">Date of birth:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="dateOfBirth" id="text-date"
											class="control-label">1/1/2000</form:label>
										<div hidden id="edit-date">
											<div>
												<form:input path="dateOfBirth" type="date"
													class="form-control pull-right" id="inputDate"
													placeholder="Enter date of birth" />
											</div>
											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditDate" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">

										<a id="showEditDate" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>


								<div class="form-group">
									<div class="col-sm-3" style="text-align: right;">
										<form:label path="addressTitle" for="inputAdd"
											class=" control-label">Address:</form:label>
									</div>
									<div class="col-sm-6">
										<form:label path="address" id="text-add" class="control-label">Address</form:label>
										<div hidden id="edit-add">
											<div>
												<form:input path="address" type="text" class="form-control"
													id="inputadd" placeholder="Enter address" />
											</div>
											<div class="col-sm-6 tms-form-btn-edit">
												<form:button id="hideEditAdd" type="submit"
													class="btn-flat btn bg-gray">Cancel</form:button>
												<form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>

											</div>
										</div>
									</div>
									<div class="col-sm-3">
										<a id="showEditAdd" class="btn-link" style="cursor: pointer">Edit</a>
									</div>
								</div>

							</div>
							<!-- /.box-body -->
						</form:form>
					</div>
				</div>
			</div>
		</section>
		<!-- /.content -->
	</div>
</div>
<jsp:include page="templates/include_js.jsp"></jsp:include>
<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditName").click(function() {
			$("#edit-name").show();
			$("#text-name").hide();
			console.log("SHOW");
		});

		$("#hideEditName").click(function() {
			$("#edit-name").hide();
			$("#text-name").show();
			console.log("HIDE");
		});

	});
</script>



<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditUser").click(function() {
			$("#edit-user").show();
			$("#text-user").hide();
			console.log("SHOW");
		});

		$("#hideEditUser").click(function() {
			$("#edit-user").hide();
			$("#text-user").show();
			console.log("HIDE");
		});

	});
</script>


<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditPass").click(function() {
			$("#edit-pass").show();
			$("#text-pass").hide();
			console.log("SHOW");
		});

		$("#hideEditPass").click(function() {
			$("#edit-pass").hide();
			$("#text-pass").show();
			console.log("HIDE");
		});
	});
</script>

<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditAge").click(function() {
			$("#edit-age").show();
			$("#text-age").hide();
			console.log("SHOW");
		});

		$("#hideEditAge").click(function() {
			$("#edit-age").hide();
			$("#text-age").show();
			console.log("HIDE");
		});
	});
</script>


<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditDate").click(function() {
			$("#edit-date").show();
			$("#text-date").hide();
			console.log("SHOW");
		});

		$("#hideEditDate").click(function() {
			$("#edit-date").hide();
			$("#text-date").show();
			console.log("HIDE");
		});
	});
</script>




<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditAdd").click(function() {
			$("#edit-add").show();
			$("#text-add").hide();
			console.log("SHOW");
		});

		$("#hideEditAdd").click(function() {
			$("#edit-add").hide();
			$("#text-add").show();
			console.log("HIDE");
		});
	});
</script>








<script>
	$(document).ready(function() {
		console.log("ACTION");
		$("#showEditEmail").click(function() {
			$("#edit-email").show();
			$("#text-email").hide();
			console.log("SHOW");
		});

		$("#hideEditEmail").click(function() {
			$("#edit-email").hide();
			$("#text-email").show();
			console.log("HIDE");
		});
	});
</script>










<%-- End Body --%>
<jsp:include page="templates/include_top.jsp"></jsp:include>