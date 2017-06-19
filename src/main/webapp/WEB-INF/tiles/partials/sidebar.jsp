<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">

	<!-- Sidebar user panel -->
	<div class="user-panel">
		<div class="pull-left image">
			<img src="#" class="img-circle" alt="User Image">
		</div>
		<div class="pull-left info">
			<p>Name</p>
			<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
		</div>
	</div>

	<!-- sidebar menu: : style can be found in sidebar.less -->
	<ul class="sidebar-menu">
		<li class="header"> NAVIGATION</li>
		<li class="treeview">
			<a href="<c:url value="/admin" />"> 
				<i class="fa fa-dashboard"></i><span>Dashboard</span>
			</a>
		</li>
	</ul>
</section>
<!-- /.sidebar -->