<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table id="table" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th style="width: 15px;">STT</th>
			<th>Name</th>
			<th>Email</th>
			<th style="width: 20px;">###</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="trainee" items="${trainees}" varStatus="stt">
			<tr>
				<td>${stt.index+1 }</td>
				<td>${trainee.name}</td>
				<td>${trainee.email}</td>
				<td style="text-align: center;"><a style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th style="width: 15px;">STT</th>
			<th>Name</th>
			<th>Email</th>
			<th style="width: 20px;">###</th>
		</tr>
	</tfoot>

</table>

<script>
	$(function() {
		$("#table").DataTable();

	});
</script>
