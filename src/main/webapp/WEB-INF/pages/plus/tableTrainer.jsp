<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table id="myTable" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Created At</th>
			<th>Updated At</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach items="${listTrainer}" var="trainer" varStatus="loop">
			<tr>
				<td style="text-align: center; width: 5%;"><c:out
						value="${loop.index + 1}" /></td>
				<td><a
					href="<c:url value="/trainingStaff/trainer/${trainer.id}/edit" />"
					title="Edit Category">${trainer.name}</a></td>
				<td style="width: 20%;">${trainer.email}</td>
				<td style="width: 15%;">${trainer.phone}</td>
				<td style="width: 15%;">${trainer.createdAt}</td>
				<td style="width: 15%;">${trainer.updatedAt}</td>

			</tr>

		</c:forEach>
	</tbody>
</table>

<script>
	$(function() {
		$("#myTable").DataTable({
			"searching" : false
		});

	});
</script>
