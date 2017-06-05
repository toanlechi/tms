
<jsp:include page="templates/include_top.jsp">
	<jsp:param value="traineeprofile" name="title"/>
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
            <form:form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                  <form:label path = "name1" for="inputName" class="col-sm-3 control-label">Trainee name:</form:label>
                  <div class="col-sm-6">
                    <form:label path = "name2" id="text-name" class="control-label">Trainee Name</form:label>
                    <div hidden id="edit-name">
                      <form:input path = "name3" type="name" class="form-control" id="inputName"/>
                      <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditName" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <a id="showEditName" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                

                <div class="form-group">
                  <form:label path = "user1" for="inputUser" class="col-sm-3 control-label">Username:</form:label>
                  <div class="col-sm-6">
                    <form:label path = "user2" id="text-user" class="control-label">Username</form:label>
                    <div hidden id="edit-user">
                      <form:input path = "user3" type="user" class="form-control" id="inputUser"/>
                      <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditUser" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <a id="showEditUser" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>


                     <div class="form-group">
                  <form:label path = "pass1" for="inputPass" class="col-sm-3 control-label">Password:</form:label>
                  <div class="col-sm-6">
                    <form:label path = "pass2" id="text-pass" class="control-label">********</form:label>
                    <div hidden id="edit-pass">
                      <form:input path = "pass3" type="pass" class="form-control" id="inputPass"/>
                      <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditPass" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <a id="showEditPass" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                
                  <div class="form-group">
                  <form:label path = "age1" for="inputAge" class="col-sm-3 control-label">Age:</form:label>
                  <div class="col-sm-6">
                    <form:label path = "age2" id="text-age" class="control-label">Age</form:label>
                    <div hidden id="edit-age">
                      <form:input path = "age3" type="age" class="form-control" id="inputAge"/>
                      <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditAge" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <a id="showEditAge" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                  
                   <div class="form-group">
                  <form:label path = "date1" for="inputDate" class="col-sm-3 control-label">Date of birth:</form:label>
                  <div class="col-sm-6">
                    <form:label path = "date2" id="text-date" class="control-label">1/1/2000</form:label>
                    <div hidden id="edit-date">
                    <form:input path = "date3" type="date" class="form-control pull-right" id="inputDate"/>
                    <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditDate" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                  
                    <a id="showEditDate" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>
                


              <div class="form-group">
                  <form:label path = "edu1" for="inputEdu" class="col-sm-3 control-label">Education:</form:label>
                <div class="col-sm-6">
                    <form:label path = "edu2" id="text-edu" class="control-label">Education</form:label>
                    <div hidden id="edit-edu">
                      <form:input path = "edu3" type="edu" class="form-control" id="inputEdu"/>
                      <div class="col-sm-6" style="margin-top: 10px">
                        <form:button type="submit" class="btn-flat btn bg-blue">Save</form:button>
                        <form:button id="hideEditEdu" type="submit" class="btn-flat btn">Cancel</form:button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">                  
                    <a id="showEditEdu" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>


                <div class="form-group">
                  <label for="inputLan" class="col-sm-3 control-label">Main Language:</label>
                <div class="col-sm-6">
                    <label id="text-lan" class="control-label">Main Language</label>
                    <div hidden id="edit-lan">
                      <input type="lan" class="form-control" id="inputLan">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditLan" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditLan" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                  <div class="form-group">
                  <label for="inputTo" class="col-sm-3 control-label">TOEIC score:</label>
                <div class="col-sm-6">
                    <label id="text-to" class="control-label">TOEIC score</label>
                    <div hidden id="edit-to">
                      <input type="to" class="form-control" id="inputTo">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditTo" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditTo" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="inputEx" class="col-sm-3 control-label">Experience details:</label>
                <div class="col-sm-6">
                    <label id="text-ex" class="control-label">Experience details</label>
                    <div hidden id="edit-ex">
                      <input type="ex" class="form-control" id="inputEx">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditEx" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditEx" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>


                <div class="form-group">
                  <label for="inputDep" class="col-sm-3 control-label">Department:</label>
                <div class="col-sm-6">
                    <label id="text-dep" class="control-label">Department</label>
                    <div hidden id="edit-dep">
                      <input type="dep" class="form-control" id="inputDep">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditDep" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditDep" class="btn-link" style="cursor:pointer">Edit</a>
                  </div>
                </div>
          
    
                 <div class="form-group">
                  <label for="inputLoc" class="col-sm-3 control-label">Location:</label>
                <div class="col-sm-6">
                    <label id="text-loc" class="control-label">Location</label>
                    <div hidden id="edit-loc">
                      <input type="loc" class="form-control" id="inputLoc">
                      <div class="col-sm-6" style="margin-top: 10px">
                        <button type="submit" class="btn-flat btn bg-blue">Save</button>
                        <button id="hideEditLoc" type="submit" class="btn-flat btn">Cancel</button>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <!-- <button id="showEditName" class="btn-link">Edit</button> -->
                    <a id="showEditLoc" class="btn-link" style="cursor:pointer">Edit</a>
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
              



                <!--  <div class="form-group">
                <div class="col-sm-offset-8 col-sm-10 ">
                  <button type="submit" class="btn btn-info">Save</button>
                <button type="submit" class="btn btn-default">Cancel</button>
                </div>
              </div> -->

             




              </div>
              <!-- /.box-body -->
            </form:form>
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
      $("#showEditAge").click(function(){
          $("#edit-age").show();
          $("#text-age").hide();
          console.log("SHOW");
      });

       $("#hideEditAge").click(function(){
          $("#edit-age").hide();
          $("#text-age").show();
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
      $("#showEditLan").click(function(){
          $("#edit-lan").show();
          $("#text-lan").hide();
          console.log("SHOW");
      });

       $("#hideEditLan").click(function(){
          $("#edit-lan").hide();
          $("#text-lan").show();
          console.log("HIDE");
      });    
    });
  </script> 

    <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditTo").click(function(){
          $("#edit-to").show();
          $("#text-to").hide();
          console.log("SHOW");
      });

       $("#hideEditTo").click(function(){
          $("#edit-to").hide();
          $("#text-to").show();
          console.log("HIDE");
      });    
    });
  </script> 

    <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditEx").click(function(){
          $("#edit-ex").show();
          $("#text-ex").hide();
          console.log("SHOW");
      });

       $("#hideEditEx").click(function(){
          $("#edit-ex").hide();
          $("#text-ex").show();
          console.log("HIDE");
      });    
    });
  </script> 

    <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditDep").click(function(){
          $("#edit-dep").show();
          $("#text-dep").hide();
          console.log("SHOW");
      });

       $("#hideEditDep").click(function(){
          $("#edit-dep").hide();
          $("#text-dep").show();
          console.log("HIDE");
      });    
    });
  </script> 


      <script>
    $(document).ready(function(){
      console.log("ACTION");
      $("#showEditLoc").click(function(){
          $("#edit-loc").show();
          $("#text-loc").hide();
          console.log("SHOW");
      });

       $("#hideEditLoc").click(function(){
          $("#edit-loc").hide();
          $("#text-loc").show();
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