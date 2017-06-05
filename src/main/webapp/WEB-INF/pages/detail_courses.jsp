<jsp:include page="templates/include_top.jsp">
	<jsp:param value="Detail Courses" name="title" />
</jsp:include>
<%--Begin Body --%>

<div class="wrapper">
	<jsp:include page="templates/include_menu.jsp"></jsp:include>

	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="styles/images/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>Alexander Pierce</p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<!-- search form -->
			<form:form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control"
						placeholder="Search..."> <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn"
							class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form:form>


			<!-- /.search form -->
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu">
				<li class="header">MAIN NAVIGATION</li>

				<li class="treeview"><a id="btn-category"> <i
						class="fa fa-files-o"></i> <span>Category</span>
				</a></li>

				<li><a id="btn-courses"> <i class="fa fa-th"></i> <span>Courses</span>
				</a></li>

				<li class="treeview" id="btn-topic"><a href="#"> <i
						class="fa fa-pie-chart"></i> <span>Topic</span>
				</a></li>

				<li class="treeview" id="btn-account"><a href="#"> <i
						class="fa fa-laptop"></i> <span>Account</span>
				</a></li>
		</section>
		<!-- /.sidebar -->
	</aside>



	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">

			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Tables</a></li>
				<li class="active">Data tables</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-xs-10 col-xs-offset-1">
					<p style="font-size: 18px; margin-left: 10px">
						Courses name: <a style="font-size: 20px">Software Technologies</a>
					</p>
					<p style="font-size: 18px; margin-left: 10px">
						Categories name: <a href="detail_categories.html"
							style="font-size: 20px">International Technologies</a>
					</p>
					<p style="font-size: 18px; margin-left: 10px">Description:</p>
					<h5 style="margin-left: 30px">------text--------</h5>
					<br>

					<div class="box">
						<div class="box-header">
							<h3 class="box-title">List Topic of Courses</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">

							<button style="margin-bottom: 10px" type="button"
								class="btn btn-default" id="btn-addtopic" data-toggle="modal"
								data-target="#dialog-topic">Add Topic</button>
							<div class="modal fade bs-example-modal-lg" id="dialog-topic"
								tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
								aria-hidden="true">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">

										<button id="close-dial" type="button" class="close">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>

										<table id="example2" class="table table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 5%">STT</th>
													<th style="width: 20%">Name</th>
													<th style="width: 65%">Description</th>
													<th style="width: 10%">####</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>nameTopic1</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>nameTopic2</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>nameTopic3</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>6</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>7</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>8</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>9</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>10</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>11</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>

											</tbody>
										</table>

									</div>
								</div>
							</div>
							<table id="example2" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th style="width: 5%">STT</th>
										<th style="width: 20%">Name</th>
										<th style="width: 65%">Description</th>
										<th style="width: 10%">###</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>nameTopic1</td>
										<td>description1description1 deption1ription1
											description1 description1</td>
										<td>
											<div class="btn-group">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													<span class="caret"></span>
												</button>
												<ul style="width: 20px" class="dropdown-menu" role="menu">
													<li><a href="#">Edit</a></li>
													<li><a href="#">Delete</a></li>
												</ul>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->


					<div class="box">
						<div class="box-header">
							<h3 class="box-title">List trainee of Courses</h3>

						</div>
						<!-- /.box-header -->
						<div class="box-body">

							<button style="margin-bottom: 10px" type="button"
								class="btn btn-default" id="btn-addtrainee" data-toggle="modal"
								data-target="#dialog-trainee">Add Trainee</button>
							<div class="modal fade bs-example-modal-lg" tabindex="-1"
								id="dialog-trainee" role="dialog"
								aria-labelledby="myLargeModalLabel2" aria-hidden="true">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<button type="button" class="close">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>

										<table id="example3" class="table table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 5%">STT</th>
													<th style="width: 20%">Name</th>
													<th style="width: 65%">Description</th>
													<th style="width: 10%">####</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>nameTopic1</td>
													<td>description1descrip description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>nameTopic2</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>nameTopic3</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>
														<div class="checkbox" style="margin-left: 30%;">
															<label> <input type="checkbox">
															</label>
														</div>
													</td>
												</tr>
												<tr>
													<td>6</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>7</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>8</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>9</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>10</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>11</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>
												<tr>
													<td>12</td>
													<td>nameTopic4</td>
													<td>description1description1 description1 description1
														description1</td>
													<td>button</td>
												</tr>

											</tbody>
										</table>

									</div>
								</div>
							</div>
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th style="width: 5%">Stt</th>
										<th style="width: 30%">Name</th>
										<th style="width: 55%">#####</th>
										<th style="width: 10%">#####</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>button</td>
										<td>Toan</td>
										<td>Win 95+</td>
										<td>4</td>
									</tr>

									<tr>
										<td>2</td>
										<td>Dung</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Tra</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>4</td>
										<td>Huyen</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>5</td>
										<td>Nhung</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>6</td>
										<td>name2</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>7</td>
										<td>Phu</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>8</td>
										<td>name2</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>9</td>
										<td>Tai</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>10</td>
										<td>An</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>11</td>
										<td>Cuong</td>
										<td>-</td>
										<td>-</td>

									</tr>
									<tr>
										<td>12</td>
										<td>name2</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>13</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>14</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>15</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>16</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>17</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>18</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>19</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>20</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>21</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>22</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>23</td>
										<td>Psds</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>24</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>25</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>26</td>
										<td>nasss</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>27</td>
										<td>aaass</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>28</td>
										<td>ssdsdsss</td>
										<td>-</td>
										<td>-</td>
									</tr>

								</tbody>
								<tfoot>
									<tr>
										<th>Stt</th>
										<th>Name</th>
										<th>#####</th>
										<th>#####</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->


				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.8
		</div>
		<strong>Copyright &copy; 2014-2016 <a
			href="http://almsaeedstudio.com">Almsaeed Studio</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-user bg-yellow"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>

								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>

								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>

								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form:form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <form:input type="checkbox" class="pull-right" checked />
						</label>

						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <form:input type="checkbox" class="pull-right" checked />
						</label>

						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <form:input type="checkbox" class="pull-right"
								checked />
						</label>

						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							online <form:input type="checkbox" class="pull-right" checked />
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <form:input type="checkbox" class="pull-right" />
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript:void(0)" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form:form>
			</div>
			<!-- /.tab-pane -->
		</div>
	</aside>
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->



</div>

<jsp:include page="templates/include_js.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$("#example1").DataTable();
		$("#example2").DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false
		});
		$("#example3").DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false
		});
	});
</script>



<%-- End Body --%>
<jsp:include page="templates/include_bottom.jsp"></jsp:include>