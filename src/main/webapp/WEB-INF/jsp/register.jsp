   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    
                   
  
 
 
     <div class="container">    
        <div id="loginbox"   class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign UP</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                       <form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
                                
                                 <div class="form-group">
                                    <label for="username" class="col-md-3 control-label">UserName</label>
                                    <div class="col-md-9">
                                        
                                        <form:input id="login-username" type="text" class="form-control" path="username" name="username" value="" placeholder="username or email" />                                        
                                     <br/>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                    <form:input id="password" type="password" class="form-control" path="password" name="password" value="" placeholder="Password" />                                        
                                     <br/>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                  
                                        <form:input id="firstname" type="firstname" class="form-control" path="firstname" name="firstname" value="" placeholder="firstname" />                                        
                                         <br/>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
 									    <form:input id="lasttname" type="lastname" class="form-control" path="lastname" name="lastname" value="" placeholder="lastname" />
                       					<br/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                    	<form:input id="text" type="email" class="form-control" path="email" name="email" value="" placeholder="email" />
                                         <br/>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="address" class="col-md-3 control-label">Address</label>
                                    <div class="col-md-9">
         
                                        <form:input id="text" type="address" class="form-control" path="address" name="address" value="" placeholder="address" />
                                     <br/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="col-md-3 control-label">Phone</label>
                                    <div class="col-md-9">
                                        <form:input id="text" type="phone" class="form-control" path="phone" name="phone" value="" placeholder="phone" />
                                      <br/>
                                    </div>
                                </div>
                               
                                
                             

                                
                        


                                <!-- Button -->
									      <div class="controls">
									        <button class="btn btn-success">Submit</button>
									      </div>
									    </div>


                                
                            </form:form>     



                        </div>                     
                    </div>  
        </div>
   
    