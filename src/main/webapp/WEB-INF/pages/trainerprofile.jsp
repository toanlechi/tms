
<jsp:include page="templates/include_top.jsp">
	<jsp:param value="Demo" name="title"/>
</jsp:include>
<%--Begin Body --%>

    
   <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
      </section>

      <!-- Main content -->
      
         <section class="content">

           <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Information Trainee</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputName" class="col-sm-3 control-label">Trainer name:</label>
                  <div class="col-sm-6">
                    <label id="text-name" class="control-label">Trainee Name</label>
                    <div hidden id="edit-name">
                      <input type="name" class="form-control" id="inputName">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditName" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <a id="showEditName" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                
               <div class="form-group">
                  <label for="inputUser" class="col-sm-3 control-label">Username:</label>
                  <div class="col-sm-6">
                    <label id="text-user" class="control-label">Username</label>
                    <div hidden id="edit-user">
                      <input type="user" class="form-control" id="inputUser">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditUser" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditUser" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>


                     <div class="form-group">
                  <label for="inputPass" class="col-sm-3 control-label">Password:</label>
                  <div class="col-sm-6">
                    <label id="text-pass" class="control-label">********</label>
                    <div hidden id="edit-pass">
                      <input type="pass" class="form-control" id="inputPass">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditPass" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditPass" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="inputDate" class="col-sm-3 control-label">Date of birth:</label>
                  <div class="col-sm-6">
                    <label id="text-date" class="control-label">1/1/2000</label>
                    <div hidden id="edit-date">
                    <input type="date" class="form-control pull-right" id="inputDate">
                    <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditDate" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditDate" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>
            
                  
                  <div class="form-group">
                  <label for="inputType" class="col-sm-3 control-label">External or Internal Type:</label>
                <div class="col-sm-6">
                    <label id="text-type" class="control-label">External</label>
                    <div hidden id="edit-type">
                      <input type="type" class="form-control" id="inputType">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditType" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditType" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

               <!--  <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">External or Internal Type</label>

                  <div class="col-sm-9">
                    
                <label class="checkbox-inline">
                          <input type="checkbox" id="inlineCheckbox1" value="option1"> External</label>
                  <label class="checkbox-inline">
                           <input type="checkbox" id="inlineCheckbox2" value="option2"> Internal</label>
                     </div>
                </div> -->


                 <div class="form-group">
                  <label for="inputEdu" class="col-sm-3 control-label">Education:</label>
                <div class="col-sm-6">
                    <label id="text-edu" class="control-label">Education</label>
                    <div hidden id="edit-edu">
                      <input type="edu" class="form-control" id="inputEdu">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditEdu" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditEdu" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="inputWor" class="col-sm-3 control-label">Working place:</label>
                <div class="col-sm-6">
                    <label id="text-wor" class="control-label">Working place</label>
                    <div hidden id="edit-wor">
                      <input type="wor" class="form-control" id="inputWor">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditWor" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditWor" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                  <div class="form-group">
                  <label for="inputTele" class="col-sm-3 control-label">Telephone:</label>
                <div class="col-sm-6">
                    <label id="text-tele" class="control-label">0123456789</label>
                    <div hidden id="edit-tele">
                      <input type="tele" class="form-control" id="inputTele">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditTele" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditTele" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                  <div class="form-group">
                  <label for="inputEmail" class="col-sm-3 control-label">Email:</label>
                <div class="col-sm-6">
                    <label id="text-email" class="control-label">Email@gmail.com</label>
                    <div hidden id="edit-email">
                      <input type="email" class="form-control" id="inputEmail">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditEmail" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditEmail" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>
          
  </div>
  

     
      </section>
      <!-- /.content -->
    </div>
    
	<jsp:include page="templates/include_js.jsp"></jsp:include>
    
     <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditName").click(function(){
          $("#edit-name").show();
          $("#text-name").hide();
          console.log("SHOW");
      });

       $("#hideEditName").click(function(){
          $("#edit-name").hide();
          $("#text-name").show();
          console.log("HIDE");
      });

     
    });
  </script>  



  <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditUser").click(function(){
          $("#edit-user").show();
          $("#text-user").hide();
          console.log("SHOW");
      });

       $("#hideEditUser").click(function(){
          $("#edit-user").hide();
          $("#text-user").show();
          console.log("HIDE");
      });

     
    });
  </script>  
    

    <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditPass").click(function(){
          $("#edit-pass").show();
          $("#text-pass").hide();
          console.log("SHOW");
      });

       $("#hideEditPass").click(function(){
          $("#edit-pass").hide();
          $("#text-pass").show();
          console.log("HIDE");
      });    
    });
  </script> 

    


       <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditDate").click(function(){
          $("#edit-date").show();
          $("#text-date").hide();
          console.log("SHOW");
      });

       $("#hideEditDate").click(function(){
          $("#edit-date").hide();
          $("#text-date").show();
          console.log("HIDE");
      });    
    });
  </script> 

       <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditType").click(function(){
          $("#edit-type").show();
          $("#text-type").hide();
          console.log("SHOW");
      });

       $("#hideEditType").click(function(){
          $("#edit-type").hide();
          $("#text-type").show();
          console.log("HIDE");
      });    
    });
  </script> 
        
    <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditEdu").click(function(){
          $("#edit-edu").show();
          $("#text-edu").hide();
          console.log("SHOW");
      });

       $("#hideEditEdu").click(function(){
          $("#edit-edu").hide();
          $("#text-edu").show();
          console.log("HIDE");
      });    
    });
  </script> 


     <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditWor").click(function(){
          $("#edit-wor").show();
          $("#text-wor").hide();
          console.log("SHOW");
      });

       $("#hideEditWor").click(function(){
          $("#edit-wor").hide();
          $("#text-wor").show();
          console.log("HIDE");
      });    
    });
  </script> 
 
     <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditTele").click(function(){
          $("#edit-tele").show();
          $("#text-tele").hide();
          console.log("SHOW");
      });

       $("#hideEditTele").click(function(){
          $("#edit-tele").hide();
          $("#text-tele").show();
          console.log("HIDE");
      });    
    });
  </script> 
   

      
    
      <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditEmail").click(function(){
          $("#edit-email").show();
          $("#text-email").hide();
          console.log("SHOW");
      });

       $("#hideEditEmail").click(function(){
          $("#edit-email").hide();
          $("#text-email").show();
          console.log("HIDE");
      });    
    });
  </script>
	
<%-- End Body --%>
<jsp:include page="templates/include_top.jsp"></jsp:include>