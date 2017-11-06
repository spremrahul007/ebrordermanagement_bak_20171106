 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Easy Bridge Resource</title>
 
 
<link rel="stylesheet" href="resources/newtemplate/vendor/bootstrap/css/bootstrap.css" />


    <!-- Custom styles for this template -->
    <link href="resources/newtemplate/css/small-business.css" rel="stylesheet">
   <link href="resources/datatable/css/bootstrap.min.css" rel="stylesheet">   
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Easy Bridge Resource</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
             <%
			 
				if (session.getAttribute("user") != null) {
					String name = (String) session.getAttribute("user");%>
					
					 <li class="nav-item active">
			            <li class="dropdown">
			              <a href="#" class="nav-link" data-toggle="dropdown">Operation 
			              <b class="caret"></b><span class="sr-only">(current)</span></a>
			              <ul class="dropdown-menu">
			                <li><a href="getorderdetails">OrderManagement</a></li>
			                <li><a href="getencorderdetails">ENC</a></li>                
			               <!--  <li class="divider"></li>  
			                <li><a href="#">Separated link</a></li> -->
			                </ul>
			            </li>    
			            
			            
					 <% out.print("</li><li class=nav-item><a class=nav-link> Hello, " + name +"</a></li>");%>
					 										
					 <li class="nav-item">
              			  <a class="nav-link" href="logout">Logout</a>
            			</li>
					  
						 
					 
					 
					
			<%	} else {
					//response.sendRedirect("index.jsp");%>
					    
			  	      	<li class="nav-item">
              			  <a class="nav-link" href="register">Registration</a>
            			</li>
			  	      	<li class="nav-item">
			              <a class="nav-link" href="login">Login</a>
            			</li>
					    <% 
				}
			 
		  %>
           
                   
             
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Heading Row -->
      <div class="row my-4">
        <div class="col-lg-8">
        <img alt="logo" src="resources/images/image1.jpg" width="100%" height="100%"/>
 
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
          <h1>Easy Bridge Resource</h1>
          <p>Web Service application for company Responsible to manage ENC Request</p>
           
          
           <%
           
			if (session.getAttribute("user") != null) 
			{ 
			%>
          		<a class="btn btn-success" href="logout">Logout!</a>
          	 <%
          	}
          	else
          	{
        	  %>
        		<a class="btn btn-success" href="login">Click to login!</a>
        	 <%
          	}
          
          %>
          
        </div>
        <!-- /.col-md-4 -->
      </div>
      <!-- /.row -->

      <!-- Call to Action Well -->
      <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          <p class="text-white m-0"></p>
        </div>
      </div>

      <!-- Content Row -->
      <div class="row">
         <div class="col-md-4 mb-4">
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
           
          </div>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-4 mb-4">
           
          
        </div>
        <!-- /.col-md-4 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy;2017 EBR. All Rights Reserved</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/newtemplate/vendor/jquery/jquery.min.js"></script>
    <script src="resources/newtemplate/vendor/popper/popper.min.js"></script>
    <script src="resources/newtemplate/vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>
