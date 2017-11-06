<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
    
  <!-- Page Content -->
    <div class="container" style="height:100%">

 

      <!-- Call to Action Well -->
      <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          <p class="text-white m-0">Password Reset!</p>
        </div>
      </div>

      <!-- Content Row -->
      <div class="row">
        <div class="col-md-4 mb-4">
           
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title"></h2>
              <p class="card-text"></p>
              	
              	<div class="login-form">
				  <form:form method="POST" commandName="password">
					 <form:errors path="*" cssClass="errorblock" element="div" /> 
					<td>Enter a EmailID:</td>
					<input  type="text" class="form-control" path="emailid" name="emailid" value=""  placeholder="" autofocus />                                        
                     <td><form:errors path="emailid" cssClass="error" cssStyle="color: #ff0000;"/></td>
                    <br/>
					<td>Enter a password:</td>
					<input  type="text" class="form-control" path="password" name="password" value="" showPassword="true" placeholder=""   />                                        
                    <td><form:errors path="password" cssStyle="color: #ff0000;"/></td>
                    <br/>
                    <td>Confirm your password:</td>
                    <input   type="password" class="form-control" path="passwordConf"  name="passwordConf" showPassword="true" placeholder="">
                     <form:errors path="password" cssClass="error" /> 
                    <br/>
					<div class="tp">
					  
						<input type="submit" class="btn btn-success" value="Submit">
						 
					</div>
					<div class="tp">
					  <br/>	
					   
					</div>
			   	  </form:form>
				</div>
				
				 
												
	 					  
	 					 	
			 		</div> 
 				</div>
					<!-- //inner_content_w3_agile_info-->
			</div>
		<!-- //inner_content-->
	</div>
	
            </div>
            
        
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
         
          </div>
        </div>
        <!-- /.col-md-4 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->