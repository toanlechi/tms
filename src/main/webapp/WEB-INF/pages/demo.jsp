
<jsp:include page="templates/include_top.jsp">
	<jsp:param value="Demo" name="title"/>
</jsp:include>
<%--Begin Body --%>

	<div class="wrapper hold-transition skin-blue sidebar-mini">
	<jsp:include page="templates/include_menu.jsp"></jsp:include>

    
    
    
	<h2>Hello World!</h2>
	<input type="text" class="form-control" id="input-text">
	
	<button class="btn btn-primary small" id="btn-ok">OK</button>
	
	</div>
	
<jsp:include page="templates/include_js.jsp"></jsp:include>

	<script type="text/javascript">
		jQuery(document).ready(
			function($){
				$("#btn-ok").click(function(event){
					var textInput = $("#input-text").val();
					$("#btn-ok").prop("disabled", true);

					$.post("api/vldTopic", {
						textInput : textInput

					}, function(data){
						//var json = JSON.parse(data);
						console.log(data);
					}).done(function(){

					}).fail(function(xhr, textStatus, errorThrown){

					}).complete(function(){
						$("#btn-ok").prop("disabled", false);
					});
				});

		});




	</script>

	
<%-- End Body --%>
<jsp:include page="templates/include_bottom.jsp"></jsp:include>