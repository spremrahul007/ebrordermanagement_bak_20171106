    <!-- Bootstrap core CSS -->
    <link href="resources/newtemplate/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/newtemplate/css/small-business.css" rel="stylesheet">
   <link href="resources/datatable/css/bootstrap.min.css" rel="stylesheet"> 
   
   
   
   


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
			if (session != null) {
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
					response.sendRedirect("index.html");%>
					    
			  	      	<li class="nav-item">
              			  <a class="nav-link" href="register">Registration</a>
            			</li>
			  	      	<li class="nav-item">
			              <a class="nav-link" href="login">Login</a>
            			</li>
					    <% 
				}
			}
		  %>
								
          </ul>
        </div>
      </div>
    </nav>

    