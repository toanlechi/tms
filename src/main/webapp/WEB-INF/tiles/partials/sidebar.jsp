<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
	<sec:authentication property="principal" var="user" />


	<sec:authorize access="hasRole('ROLE_2')">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<c:url value="/static/images/avatar5.png" />" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${user.username }</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">NAVIGATION</li>
			<li class="treeview"><a href="<c:url value="/category" />">
					<i class="fa fa-cube"></i><span>Category</span>
			</a></li>
			<li class="treeview"><a href="<c:url value="/courses" />"> <i
					class="fa fa-book"></i><span>Courses</span>
			</a></li>
			<li class="treeview"><a href="<c:url value="/topic" />"> <i
					class="fa fa-file-o"></i><span>Topic</span>
			</a></li>
		</ul>
	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_1')">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<c:url value="/static/images/avatar04.png" />" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${user.username }</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">NAVIGATION</li>
			<li class="treeview"><a href="<c:url value="/admin/trainerManager" />">
					<i class="fa fa-user"></i><span>Trainer</span>
			</a></li>
			<li class="treeview"><a href="<c:url value="/admin/trainingStaffManager" />"> <i
					class="fa fa-user-secret"></i><span>TrainingStaff</span>
			</a></li>
		</ul>
	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_4')">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<c:url value="/static/images/avatar.png" />" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${user.username }</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">NAVIGATION</li>
		</ul>
	</sec:authorize>


</section>
<!-- /.sidebar -->