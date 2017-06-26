<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Dashboard <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<!-- box  Category -->
			<div class="box" id="box-category">
				<div class="box-header">
					<h3 class="box-title">Data Table Category</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="categoryItem" items="${listCategory}"
								varStatus="stt">
								<tr>
									<td>${stt.index +1 }</td>
									<td>${categoryItem.name }</td>
									<td>${categoryItem.description }</td>
									<td>${categoryItem.createdAt }</td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle"
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

							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->


			<!-- box  Courses -->
			<div class="box" id="box-courses">
				<div class="box-header">
					<h3 class="box-title">Data Table Courses</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="example3" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date</th>
								<th></th>
							</tr>
						</thead>
						<tbody>


							<c:forEach var="coursesItem" items="${listCourses }"
								varStatus="stt">
								<tr>
									<td>${stt.index +1 }</td>
									<td>${coursesItem.name }</td>
									<td>${coursesItem.description }</td>
									<td>${coursesItem.createdAt }</td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle"
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

							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->




			<!-- box  Topic -->
			<div class="box" id="box-topic">
				<div class="box-header">
					<h3 class="box-title">Data Table Topic</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="example4" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Created At</th>
								<th></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="topicItem" items="${listTopic }" varStatus="stt">
								<tr>
									<td>${stt.index +1 }</td>
									<td>${topicItem.name }</td>
									<td>${topicItem.description }</td>
									<td>${topicItem.createdAt }</td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle"
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

							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Created At</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->




			<!-- box  Account -->
			<div class="box" id="box-account">
				<div class="box-header">
					<h3 class="box-title">Data Table Account</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="example5" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Rendering engine</th>
								<th>Browser</th>
								<th>Platform(s)</th>
								<th>Engine version</th>
								<th>CSS grade</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Trident</td>
								<td>Lê Chí Toản</td>
								<td>Win 95+</td>
								<td>4</td>
								<td>X</td>
							</tr>

							<tr>
								<td>Misc</td>
								<td>Ngô Xuân Dũng</td>
								<td>Text only</td>
								<td>-</td>
								<td>X</td>
							</tr>
							<tr>
								<td>Misc</td>
								<td>Lynx</td>
								<td>Text only</td>
								<td>-</td>
								<td>X</td>
							</tr>
							<tr>
								<td>Misc</td>
								<td>IE Mobile</td>
								<td>Windows Mobile 6</td>
								<td>-</td>
								<td>C</td>
							</tr>
							<tr>
								<td>Misc</td>
								<td>PSP browser</td>
								<td>PSP</td>
								<td>-</td>
								<td>C</td>
							</tr>
							<tr>
								<td>Other browsers</td>
								<td>All others</td>
								<td>-</td>
								<td>-</td>
								<td>U</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th>Rendering engine</th>
								<th>Browser</th>
								<th>Platform(s)</th>
								<th>Engine version</th>
								<th>CSS grade</th>
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
	-------
</section>
<!-- /.content -->