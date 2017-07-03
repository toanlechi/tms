<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value="/static/css/star-rating.css" />" rel="stylesheet">
<script src="<c:url value="/static/js/star-rating.js" />"></script>

<input id="showrate" type="text" class="rating rating-loading"
	data-size="xs" data-min="0" data-max="5" data-step="1"
	data-readonly="true" value="${reviewCourses.star}">
	
<div class="form-group" id="formContent">
	<label>${reviewCourses.trainee.name}</label>
	<p>${reviewCourses.review}</p>
</div>