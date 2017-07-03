<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table id="table" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Birthday</th>
			<th>Address</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="trainee" items="${trainees}" varStatus="stt">
			<tr>
				<td style="text-align: center; width: 5%">${stt.index+1 }</td>
				<td style="width: 15%">${trainee.name}</td>
				<td style="width: 20%">${trainee.email}</td>
				<th style="width: 20%">${trainee.birthday}</th>
				<th>${trainee.address}</th>
				<td style="text-align: center; width: 5%"><a
					style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
			</tr>
		</c:forEach>
	</tbody>

</table>

<script>
	$(function() {
		$("#table").DataTable();

	});
</script>
