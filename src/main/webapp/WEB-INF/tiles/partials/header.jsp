<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!-- Logo -->

<sec:authorize access="hasRole('ROLE_1')">
	<c:url value="/admin/trainerManager" var="link"></c:url>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_2')">
	<c:url value="/category" var="link"></c:url>
</sec:authorize>

<a href="${link }" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
	<span class="logo-mini"><b>TMS</b></span> <!-- logo for regular state and mobile devices -->
	<span class="logo-lg"><b>TMS</b></span>
</a>
<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top">
	<!-- Sidebar toggle button-->
	<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
		role="button"> <span class="sr-only">Toggle navigation</span>
	</a>

	<div class="navbar-custom-menu">
		<sec:authentication property="principal" var="user" />

		<sec:authorize
			access="hasAnyRole('ROLE_2', 'ROLE_1', 'ROLE_3', 'ROLE_4') and isAuthenticated()">
			<ul class="nav navbar-nav">
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu">
					<sec:authorize access="hasRole('ROLE_1')">
						<a href='' class="dropdown-toggle" data-toggle="dropdown">
							<img src="<c:url value="/static/images/avatar04.png" />" class="user-image" alt="User avatar"> <span
								class="hidden-xs">${user.username }</span>
						</a>	
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_2')">
						<a href='' class="dropdown-toggle" data-toggle="dropdown">
							<img src="<c:url value="/static/images/avatar5.png" />" class="user-image" alt="User avatar"> <span
								class="hidden-xs">${user.username }</span>
						</a>	
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_3')">
						<a href='' class="dropdown-toggle" data-toggle="dropdown">
							<img src="<c:url value="/static/images/avatar3.png" />" class="user-image" alt="User avatar"> <span
								class="hidden-xs">${user.username }</span>
						</a>	
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_4')">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src='<c:url value="/static/images/avatar.png" />' class="user-image" alt="User avatar"> <span
								class="hidden-xs">${user.username }</span>
						</a>	
					</sec:authorize>
					
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/home" />"><i
								class="fa fa-globe fa-fw"></i> Back website</a></li>

						<li><a href="<c:url value="/logout" />"><i
								class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</ul>
				</li>
			</ul>
		</sec:authorize>

		<sec:authorize access="!isAuthenticated()">
			<ul class="nav navbar-nav">
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href='<c:url value="/login" />'
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="hidden-xs">Login</span>
				</a>
			</ul>
		</sec:authorize>
	</div>
</nav>