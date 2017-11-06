<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>EBR</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="resources/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
<!-- banner -->
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">

				<!-- //nav_agile_w3l -->
                <li class="second logo admin"><h1><a href="main-page.html">
                <i class="fa fa-graduation-cap" aria-hidden="true"></i>EBR </a></h1></li>
					
				 <li class="second w3l_search admin_login">
				 
						 <table style="width:75%" class="second w3l_search admin_login">            
				            <tr>
							    <td><a href="index.jsp">Home</a></td>
							 
 								<%
									if (session != null) {
										if (session.getAttribute("user") != null) {
											String name = (String) session.getAttribute("user");
											out.print("<td> Hello, " + name +"</td>");%>
											<td><form action="Logout" method="post">											
											<a href="logout">Logout</a>
												 
												 
											</form>
											</td>
											
									<%	} else {
											response.sendRedirect("index.html");%>
											    <td><a href="register">Registration</a></td>
											    <td><a href="login">Login</a></td><% 
										}
									}
								%>

								
							  </tr>
			              </table>
					
				</li> 
				 
				 

			</ul>
			<!-- //nav -->
			
		</div>
		 </div>
<!-- banner -->
 
<!-- js -->

          <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
		  <script src="resources/js/modernizr.custom.js"></script>
		
		   <script src="resources/js/classie.js"></script>
		  <script src="resources/js/gnmenu.js"></script>
		  <script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		 </script>
	 
			  <script src="resources/js/prettymaps.js"></script>
			 
<!-- //js -->
<script src="resources/js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
<script src="resources/js/jquery.nicescroll.js"></script>
<script src="resources/js/scripts.js"></script>

<script type="text/javascript" src="resources/js/bootstrap-3.1.1.min.js"></script>


</body>
</html>