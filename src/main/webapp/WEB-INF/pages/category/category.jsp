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
			<!-- box  Category -->
			<div class="box" id="box-category">
				<div class="box-header">
					<div class="col-sm-6">
						<h3 class="box-title">Data Table Category</h3>
					</div>


					<div class="col-sm-6 text-right">
						<a class="btn btn-primary" href="<c:url value="/category/add" />">Add</a>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="category-table"
						class="table table-bordered table-striped">
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
							<c:forEach var="categoryItem" items="${categorys}"
								varStatus="stt">
								<tr id="tr${categoryItem.id }">
									<td>${stt.index +1 }</td>
									<td><a
										href='<c:url value="/category/${categoryItem.id }" />'>${categoryItem.name }</a></td>
									<td><p class="description">${categoryItem.description }</p></td>
									<td>${categoryItem.createdAt }</td>
									<td><a data-toggle="modal"
								data-target="#dialog-question" onclick="set_id_category(${categoryItem.id }, '${categoryItem.name }')"
										style="cursor: pointer;"><span class="fa fa-trash-o"></span></a></td>
								</tr>

							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>STT</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date</th>
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
	<input class="hidden" type="text" id="id-category">
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
				<p >One fine body&hellip;</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-left"
					data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" onclick="remove_category()" data-dismiss="modal">OK</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<script>
	$(function() {
		$("#category-table").DataTable();

	});
	
	function set_id_category(id, name) {
		$("#id-category").val(id);
		$("#message").empty();
		$("#message").append("<p>Do you want delete category <strong>" + name+ "</strong> ?</p>");
	}
	
	function remove_category() {
		var id = $("#id-category").val();
		$.ajax({
			url : "/tms/category/"+id+"/remove",
			type : 'GET',
			success : function(res) {
				$("#tr"+id).remove();
			}
		});

	}
</script>
