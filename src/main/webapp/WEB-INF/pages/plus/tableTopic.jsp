<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table id="topic-table" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>STT</th>
			<th>Name</th>
			<th>Description</th>
			<th>Created At</th>
			<th></th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="topicItem" items="${topics }" varStatus="stt">
			<tr id="tr${topicItem.id }">
				<td>${stt.index +1 }</td>
				<td><a href='<c:url value="/topic/${topicItem.id }" />'>${topicItem.name }</a></td>
				<td>${topicItem.description }</td>
				<td>${topicItem.createdAt }</td>
				<td><a data-toggle="modal" data-target="#dialog-question"
					onclick="set_id_topic(${topicItem.id }, '${topicItem.name }')"
					style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
			</tr>

		</c:forEach>

	</tbody>
	
</table>

<script>
	$(function() {
		$("#topic-table").DataTable({
			 "searching": false
		});

	});
</script>
