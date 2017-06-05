<jsp:include page="templates/include_top.jsp">
	<jsp:param value="TrainingStaff" name="title"/>
</jsp:include>
<%--Begin Body --%>

    
    
 <div class="wrapper">
  
 <jsp:include page="templates/include_menu.jsp"></jsp:include>
  
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="styles/images/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
      
        <li class="treeview" >
          <a id="btn-category">
            <i class="fa fa-files-o"></i>
            <span>Category</span>
          </a>
        </li>

        <li>
          <a id="btn-courses">
            <i class="fa fa-th"></i> <span>Courses</span>
          </a>
        </li>

        <li class="treeview" id="btn-topic">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Topic</span>
          </a>
        </li>

        <li class="treeview" id="btn-account">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Account</span>
          </a>
        
        </li>
      
       
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
      


          <!-- box  Category -->
          <div class="box" id="box-category">
            <div class="box-header">
              <h3 class="box-title">Data Table Category</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th style="width: 10%;">STT</th>
                  <th style="width: 30%;">Name</th>
                  <th style="width: 50%;">Description</th>
                  <th style="width: 10%;"></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1</td>
                  <td>IT</td>
                  <td>Win 95+</td>
                  
                  <td>
                  		<div class="btn-group">
							<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<span class="caret"></span>
							</button>
							<ul style="width:20px"class="dropdown-menu" role="menu">
								<li><a href="#">Edit</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
                  
                  </td>
                </tr>
                
                <tr>
                  <td>2</td>
                  <td>Eco</td>
                  <td>Text only</td>
                  
                  <td>
                  		<div class="btn-group">
						<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						</button>
						<ul style="width:20px"class="dropdown-menu" role="menu">
							<li><a href="#">Edit</a></li>
							<li><a href="#">Delete</a></li>
						</ul>
					</div>
                  
                  </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Môi trường</td>
                  <td>Text only</td>
                  
                  <td>
                  			<div class="btn-group">
						<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						</button>
						<ul style="width:20px"class="dropdown-menu" role="menu">
							<li><a href="#">Edit</a></li>
							<li><a href="#">Delete</a></li>
						</ul>
					</div>
                  
                  
                  </td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>IE Mobile</td>
                  <td>Windows Mobile 6</td>
                  <td>
                  			<div class="btn-group">
						<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						</button>
						<ul style="width:20px"class="dropdown-menu" role="menu">
							<li><a href="#">Edit</a></li>
							<li><a href="#">Delete</a></li>
						</ul>
					</div>
                  
                  </td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>PSP browser</td>
                  <td>PSP</td>
                  <td>
                  			<div class="btn-group">
						<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						</button>
						<ul style="width:20px"class="dropdown-menu" role="menu">
							<li><a href="#">Edit</a></li>
							<li><a href="#">Delete</a></li>
						</ul>
					</div>
                  
                  </td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>All others</td>
                  <td>-</td>
                  <td>
                  			<div class="btn-group">
						<button  type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						</button>
						<ul style="width:20px"class="dropdown-menu" role="menu">
							<li><a href="#">Edit</a></li>
							<li><a href="#">Delete</a></li>
						</ul>
					</div>
                  
                  
                  </td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>STT</th>
                  <th>Name</th>
                  <th>Description</th>
                  
                  <th></th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


            <!-- box  Courses -->
          <div class="box" id="box-courses">
            <div class="box-header">
              <h3 class="box-title">Data Table Courses</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example3" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>Trident</td>
                  <td>AI</td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                </tr>
                
                <tr>
                  <td>Misc</td>
                  <td>Phân tích thiết kế</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td>Windows Mobile 6</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td>PSP</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td>-</td>
                  <td>-</td>
                  <td>U</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->




            <!-- box  Topic -->
          <div class="box" id="box-topic">
            <div class="box-header">
              <h3 class="box-title">Data Table Topic</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example4" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 4.0
                  </td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                </tr>
                
                <tr>
                  <td>Misc</td>
                  <td>Links</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td>Windows Mobile 6</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td>PSP</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td>-</td>
                  <td>-</td>
                  <td>U</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->




            <!-- box  Account -->
          <div class="box" id="box-account">
            <div class="box-header">
              <h3 class="box-title">Data Table Account</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example5" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>Trident</td>
                  <td>Lê Chí Toản</td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                </tr>
                
                <tr>
                  <td>Misc</td>
                  <td>Ngô Xuân Dũng</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>Lynx</td>
                  <td>Text only</td>
                  <td>-</td>
                  <td>X</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>IE Mobile</td>
                  <td>Windows Mobile 6</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Misc</td>
                  <td>PSP browser</td>
                  <td>PSP</td>
                  <td>-</td>
                  <td>C</td>
                </tr>
                <tr>
                  <td>Other browsers</td>
                  <td>All others</td>
                  <td>-</td>
                  <td>-</td>
                  <td>U</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
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
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->



      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
	
<jsp:include page="templates/include_js.jsp"></jsp:include>
	
	
	<script type="text/javascript">
	 $("#box-category").show();
	    $("#box-courses").hide();
	    $("#box-topic").hide();
	    $("#box-account").hide();


	  $(function () {
	    $("#example1").DataTable();
	    $("#example3").DataTable();
	    $("#example4").DataTable();
	    $("#example5").DataTable();
	    $('#example2').DataTable({
	      "paging": true,
	      "lengthChange": false,
	      "searching": false,
	      "ordering": true,
	      "info": true,
	      "autoWidth": false
	    });
	  });

	  $("#btn-category").click(function(){
	    $("#box-category").show();
	    $("#box-courses").hide();
	    $("#box-topic").hide();
	    $("#box-account").hide();
	  });

	  $("#btn-courses").click(function(){
	    $("#box-category").hide();
	    $("#box-courses").show();
	    $("#box-topic").hide();
	    $("#box-account").hide();
	  });


	  $("#btn-topic").click(function(){
	    $("#box-category").hide();
	    $("#box-courses").hide();
	    $("#box-topic").show();
	    $("#box-account").hide();
	  });


	  $("#btn-account").click(function(){
	    $("#box-category").hide();
	    $("#box-courses").hide();
	    $("#box-topic").hide();
	    $("#box-account").show();
	  });
	</script>
	
	
<%-- End Body --%>
<jsp:include page="templates/include_bottom.jsp"></jsp:include>