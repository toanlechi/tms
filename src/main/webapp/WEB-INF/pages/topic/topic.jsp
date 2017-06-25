<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="content-header">
	<h1>
		Dashboard <small>Data Infomation</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<!-- box  Topic -->
			<div class="box" id="box-topic">
				<div class="box-header">
					<div class="col-sm-6">
						<h3 class="box-title">Data Table Topic</h3>
					</div>

					<div class="col-sm-6 text-right">
						<a class="btn btn-primary" href="<c:url value="/topic/add" />">Add</a>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
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
									<td><a data-toggle="modal" data-target="#dialog-question" onclick="set_id_topic(${topicItem.id }, '${topicItem.name }')"
										style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
								</tr>

							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Created At</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->




		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	-------
</section>
<!-- /.content -->

<div class="modal" id="dialog-question" aria-hidden="true">
	<input class="hidden" type="text" id="id-topic">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Delete</h4>
			</div>
			<div class="modal-body" id="message">
				<p>One fine body&hellip;</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-left"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary"
					onclick="remove_topic()" data-dismiss="modal">OK</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>


<script>
	$(function() {
		$("#topic-table").DataTable();

	});
	
	function set_id_topic(id, name) {
		$("#id-topic").val(id);
		$("#message").empty();
		$("#message").append("<p>Do you want delete topic <strong>" + name+ "</strong> ?</p>");
	}
	
	function remove_topic() {
		var id = $("#id-topic").val();
		$.ajax({
			url : "/tms/topic/"+id+"/remove",
			type : 'GET',
			success : function(res) {
				$("#tr"+id).remove();
			}
		});

	}
</script>