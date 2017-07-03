<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table id="courses-table" class="table table-bordered table-striped">
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


		<c:forEach var="coursesItem" items="${listCourses }" varStatus="stt">
			<tr id="tr${coursesItem.id }">
				<td>${stt.index +1 }</td>
				<td><a href='<c:url value="/courses/${coursesItem.id }" />'>${coursesItem.name }</a></td>
				<td>${coursesItem.description }</td>
				<td>${coursesItem.createdAt }</td>
				<td><a data-toggle="modal" data-target="#dialog-question"
					onclick="set_id_courses(${coursesItem.id }, '${coursesItem.name }')"
					style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
			</tr>

		</c:forEach>


	</tbody>
	
</table>

<script>
	$(function() {
		$("#courses-table").DataTable({
			 "searching": false
		});

	});
</script>
