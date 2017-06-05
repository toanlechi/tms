<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
 
    
 <!DOCTYPE html>
<html>
<head>
	 <meta charset="utf-8">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <title><c:out value="${param.title}"/></title>
	 <!-- Tell the browser to be responsive to screen width -->
	 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
    <!-- original -->
    <link href="static/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="static/font-awesome/4.6.2/css/font-awesome.css" type="text/css" rel="stylesheet"/>
    <link href="static/datatables/1.10.13/media/css/dataTables.bootstrap.css" type="text/css" rel="stylesheet"/>
	
    <!-- self hosted libraries -->
    <link href="styles/css/style.css" type="text/css" rel="stylesheet"/>
    
    <link rel="stylesheet" href="styles/css/AdminLTE.min.css">
   	<link rel="stylesheet" href="styles/css/skins/_all-skins.min.css">
   	<link rel="stylesheet" href="styles/js/iCheck/square/blue.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    
    
</head>
<body class="hold-transition skin-blue sidebar-mini">

