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
          <p class="text-white m-0">LogIn!</p>
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
				  <form  id="loginForm"  action="loginProcess" method="post">
					<form:errors path="*" cssClass="errorblock" element="div" />
					
					<input id="login-username" type="text" class="form-control" path="username" name="username" value="" placeholder="username" autofocus />                                        
                    <form:errors path="username" cssClass="error" /> 
                    <br/>
                    <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                     <form:errors path="password" cssClass="error" /> 
                    <br/>
					<div class="tp">
					  
						<input type="submit" class="btn btn-success" value="LOGIN">
						 
					</div>
				 
                    
					<div class="tp">
					  <br/>	
					   <p>Don't have an account? </p>
					    <a class="btn btn-success" href="register">SignUp</a>
						 
						<div style="float:right; font-size: 100%; position: relative; top:20px"><a href="password">Forgot password?</a></div>
					</div>
			   	  </form>
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