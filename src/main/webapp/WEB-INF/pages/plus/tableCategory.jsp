<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table id="category-table" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Date</th>
			<th>Remove</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="categoryItem" items="${categorys}" varStatus="stt">
			<tr id="tr${categoryItem.id }">
				<td style="width: 5%; text-align: center;">${stt.index +1 }</td>
				<td style="width: 20%;"><a
					href='<c:url value="/category/${categoryItem.id }" />'>${categoryItem.name }</a></td>
				<td><p class="description">${categoryItem.description }</p></td>
				<td style="width: 15%;">${categoryItem.createdAt }</td>
				<td style="width: 5%; text-align: center;"><a
					data-toggle="modal" data-target="#dialog-question"
					onclick="set_id_category(${categoryItem.id }, '${categoryItem.name }')"
					style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
			</tr>

		</c:forEach>

	</tbody>

</table>

<script>
	$(function() {
		$("#category-table").DataTable({
			 "searching": false
		});

	});
</script>
