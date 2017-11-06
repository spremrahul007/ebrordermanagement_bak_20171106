<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
 <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 
 
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
   
   
 
  <!-- Large modal -->
    
 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 
 
   
<!-- Large modal -->

  


<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>


   
<!-- Large modal -->
 
 
<div class="inner_content">

  	<!-- breadcrumbs -->
	<div class="w3l_agileits_breadcrumbs">
		<div class="w3l_agileits_breadcrumbs_inner">
		<br/>
			<ul>
			  	<span>«</span><a href="index.jsp">Home</a>	
				<span>«</span>Order Management <span>«</span> 
					</ul>
		</div>
	</div>
	<form id="form" action="getorderdetails" method ="POST"  >
	<!-- //breadcrumbs -->	
<div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          
         
									 
			  
					 <label>From Date:</label><input type="text" id="datepicker1" name ="fromdate" value ="${fromdate}" class="from-control">
					 <label>To Date:</label><input type="text" id="datepicker2"  name ="todate" value ="${todate}" class="from-control">
									 
             	<!--	<tr>
						<td><form:label path="shipname">Department</form:label></td>
						<td>
							<form:select path="shipname">
								<form:options items="${listShipNames}" />
								
							</form:select>
						</td>
					</tr>-->
					 	 
					 	<tr>
						<td><form:label path="shipname">ShipName</form:label></td>
						<td>
							<form:select id="salesrep" path="shipname" name="selectList">
										<option>--select all--</option>   
								   <c:forEach var="list" items="${listShipNames}">
								       <option>${list.getshipname()}</option>   
								   </c:forEach>
								 
								</form:select>
						</td>
					</tr>
					  <button type="submit" class="btn btn-success">Submit</button> 
				   
	 </div>
			
 </div>
 
 
 
  		 
	 
 
  <ul class="nav nav-tabs" id="myTab">
			  <li class="active"><a data-target="#home" data-toggle="tab">MapView</a>
			  
			
			  </li>
			  <li><a data-target="#profile" data-toggle="tab">GridView</a></li>			  
			</ul>
			
			 
			<div class="tab-content">			
			  <div class="tab-pane active" id="home">
			  
			  <table width="100%">
			  <tr>
			  <td width="90%">
			  <div id="map"></div>
			  </td>
			  <td>
			     
			    <input id="all" type="checkbox"  onchange="$('#form').submit();" class="all" name="all" value="0" />ALL<br/>
			    <input id="overView" type="checkbox"  onchange="$('#form').submit();" class="overView" name="overView" value="1"  />OverView<br/>
				<input id="general" type="checkbox" onchange="$('#form').submit();" class="general" name="general" value="2" />General<br/>
				<input id="coastal" type="checkbox" onchange="$('#form').submit();" class="coastal" name="coastal" value="3" />Coastal<br/>
				<input id="approach" type="checkbox" onchange="$('#form').submit();" class="approach" name="approach" value="4" />Approach<br/>
				<input id="harbour" type="checkbox" onchange="$('#form').submit();" class="harbour" name="harbour" value="5" />Harbour<br/>
				<input id="berthing" type="checkbox" onchange="$('#form').submit();" class="berthing" name="berthing" value="6" />Berthing<br/>
				 	 
			  </td>
			  </tr>
			  </table>
			  
			  
			 </div>
			  
			 <div class="tab-pane" id="profile">Profile
 
    	<table id="example" class="display">
                   
                   <thead>
                   
                  <tr>
                <th>ShipName</th>
                <th>OrderDate</th>
                <th>OrderNo</th>
                <th>NoOfCell</th>
                <th>OrderStatus</th>
                <th>PermitStatus</th>
                <th>Price</th>
                <th>Action</th>                          
            </tr>
                   </thead>
   <tbody>
        	<c:forEach var="contact" items="${listContact}" varStatus="status">
	        	<tr>
		        	<!--  	<td>${status.index + 1}</td>-->
						<td><c:out value="${contact.shipname}"/></td>
						<td>${contact.datetime}</td>
						<td>${contact.orderno}</td>						
						<td>${contact.noofcell}</td>
						<td>${contact.orderstatus}</td>
						<td>${contact.permitstatus}</td>
						<td>${contact.price}</td>	
						<!-- <td><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target-id="${contact.shipname}" data-target="#myModal">View All Details</button></td> -->
						<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"  data-target-id="${contact.shipname}" data-target-orderno="${contact.orderno}"> <span class="glyphicon glyphicon-edit"></span></button></p></td>
						 							
		        	</tr>
        	 </c:forEach>
        
    </tbody>
        
</table>
		     
	 </div>
	 
    	</div>
 
    	
		   </form >	  
	 </div>
			 			  										
 <!--//set-2-->
	 
  		
 <script type="text/javascript">
    $( "#datepicker1" ).datepicker();
    $( "#datepicker2" ).datepicker();
   
 
</script>


 

 <!-- Large modal -->
    
 
 

<!-- Large modal -->

<div class="modal fade bs-example-modal-lg"  id="edit"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
        <div class="modal-body">
      
       <form name="PopulateTable" method="post" action="PopulateTable">
       <table cellspacing="0" id="countrytable" class="table table-bordred table-striped"> 
       
		    <tr>  
		        <th scope="col">ProductType</th> 
		        <th scope="col">Product</th> 
		        <th scope="col">Title</th>
		        <th scope="col">Scale</th>
		        <th scope="col">UsageBand</th>
		        <th scope="col">ExpireDate</th>
		        <th scope="col">Status</th>
		        <th scope="col">InstalledInCharts</th>
		        <th scope="col">Approved</th>
		        <th scope="col">Rejected</th>  
		         
		    </tr> 
       
		</table>
		<div class="modal-footer">
		<table> 
		 
			<tr>
				<td>
					<INPUT id="submit" name="submit" type="submit" value="Submit Items" class="btn btn-success" />
				</td>
				<td></td>
				<td><button type="button" class="btn btn-success" data-dismiss="modal">Close</button></td>
			</tr>
		 </table>
			</div>	
			</form>
		</div>
	   
    </div>
  </div>
</div>



 <script>
 
  
 $(document).ready(function(){
	 
	// alert("${k}")
	 //alert("${fromdate}")
	// alert("${todate}")
	 if ( "${k}" == '')
		{
		 	$("#salesrep").val("--select all--");
		}
	 else
		 {
	 		$("#salesrep").val("${k}");
		 }
	 });


 
	
 //$('input').on('change', function() {
	//    var values = $('input:checked').map(function() {
	  //      return this.value;
	  //  }).get();
	    
	   // $('#output').append(values.toString()).append('<br/>');
	//});
 
    $(document).ready(function(){
        $("#edit").on("show.bs.modal", function(e) {
            var id = $(e.relatedTarget).data('target-id');
            var id1 = $(e.relatedTarget).data('target-orderno');
             
           //alert(id);
           //alert(id1);
            //alert(id + "," + id1 );
            
           
            $.get( "PopulateTable" , {json4:id,json5:id1}, function( data ) {
            	 if(data!=null){ 
                 	//alert(4)
                 	$("#countrytable").find("tr:gt(0)").remove();
                 	
                 	 
                     var table1 = $("#countrytable");
                    
                 	 
                     
                    
                     
                     var tr;
                     for (var i = 0; i < data.length; i++) {
                    	 
                    	 //alert($('#TRUE').val())
                    	 
                    	 
                         tr = $('<tr/>');
                         //tr.append("<td class=""nr"">" + data[i].orderdate + "</td>");
                         tr.append("<td>" + data[i].producttype + "</td>");
                         tr.append("<td>" + data[i].product + "</td>");
                         tr.append("<td>" + data[i].title + "</td>");
                         tr.append("<td>" + data[i].scale + "</td>");
                         tr.append("<td>" + data[i].usageband + "</td>");
                         tr.append("<td>" + data[i].expiredate + "</td>");
                         tr.append("<td>" + data[i].status + "</td>");
                         tr.append("<td>" + data[i].installedInCharts + "</td>");
                        // tr.append("<td>" + data[i].InstalledInCharts + "</td>");                       
                         
                         
                       //  tr.append("<td>" + data[i].approved + "</td>");
                        // tr.append("<td>" + data[i].rejected + "</td>");
                         tr.append("<td> <input TYPE=checkbox   id="+ data[i].orderno + "  class="+ data[i].approved + "  name=approved VALUE="+ data[i].productid + 
                        		  "   ></td>");
                         tr.append("<td> <input TYPE=checkbox  id="+ data[i].orderdate + "  class="+ data[i].rejected + "  name=rejected VALUE="+ data[i].productid + 
                        		 " ></td>");
                          
                        
                        
                         
                         $("#countrytable").append(tr);
                       
                         
                         $('#countrytable').each(function(){

                             //alert(9)
                             $(".TRUE").prop("checked", true);
                             
                            // var items = new Array();
                             //$('#countrytable tr input:checkbox:checked').each(function() {
                               //  items.push($(this).val());
                                // alert(items)
                             //});
                         });
                         
                         
                     }
                    
                     }	
            	 
            	 
                 });
                 $("#tablediv").show();
                
                
            });
        
        
   
        });
    
    	 
</script>
  
     
 <script type="text/javascript">
     
     


  //   $(document).ready(function(){   
         $('#submit').click(function(){  
        	        	
        	// var id = $(e.relatedTarget).data('target-id');
             //var id1 = $(e.relatedTarget).data('target-orderno');
            
           // alert(id);
          //  alert(id1);
        	 
        	 
             
             
            var Granted = new Array();
            var Denied = []; 
            var rejChecked = new Array();
            var rejUnChecked = new Array();
            var orderno =[];
            var orderdate =[];
            var name ="welcome to new";            
            var json = ["red","blue","green","yellow"];
            
            i =0;
            j =0;
            k =0;
            l =0;
            m =0;
            n =0;
            $('input:checkbox[name=approved]').each(function () {
           	 if (this.checked == true) {
                   // $('.chcktbl:checked').attr('checked', true);
                    //alert($(this).val());
                     Granted[i++] = ($(this).attr('value'));
                }
                else {
                    //$('.chcktbl:not(:checked)').attr('checked', false);
                    //alert($(this).val());
                    Denied[j++] = ($(this).attr('value'));
                
                }
           	 
           	
            });
         	// alert("GRANTED: " +  Granted);
            // alert("DENIED: " +  Denied);
              
             
             $('input:checkbox[name=rejected]').each(function () {
               	 if (this.checked == true) {
                         
                        //alert($(this).val());
                        rejChecked[k++] = ($(this).attr('value'));
                    }
                    else {
                        
                        //alert($(this).val());
                        rejUnChecked[l++] = ($(this).attr('value'));
                    
                    }
                });
             
             var id2= "${fromdate}";
             var id3= "${todate}";
             var id4= "${k}"
            //alert(id);
            //alert(id1);
            // alert(id2  + "," + id3 + ","  + id4);
              
             $('input:checkbox[name=rejected]').each(function () {
            	 orderno[m++] = this.id;
            	// alert(this.id);
             });
             $('input:checkbox[name=approved]').each(function () {
            	 orderdate[n++] = this.id;
            	// alert(this.id);
             });
             
             
             $.post("PopulateTable",
          			{json:Granted,json1:Denied,json2:rejChecked,json3:rejUnChecked,json4:id2,json5:id3,json6:id4,json7:orderno,json8:orderdate}, function(data) {
          			//	alert(cityName);
          			//	//$("#weatherReport").html(data);
          			});
             
             
            //alert("rejChecked: " +  rejChecked);
           // alert("rejUnChecked: " + rejUnChecked);
                 
                 
           //  $.post("PopulateTable",{arraydata:Granted,mode:"Insert" },
             //        function(data) {
               //            alert("Data Loaded: " + Granted);
                 //    });
             
            // alert(id2);
             		//cityName = json;
         			
         			
         			//$.post("getorderdetails",
                 		//	{json4:id2}, function(data) {
                 			 
                 			//	//$("#weatherReport").html(data);
                 		//	});
             
         });  
//}); 
     
     
     
     
    
</script>





<!-- map code -->

<style>
	       #map {
	 border:1px solid black;
  height: 400px;
  width: 100%;
  border-radius: 4px;
	       }
	    </style>
	    
	       
	   
	  
	    
	    <script>        
	    
	 
	    $('.all').click(function() {
	    	 //alert(44)
	    	 
	    	 
	    		 $('#overView').prop( 'checked', true );
		    	  $('#general').prop( 'checked', true );
		    	  $('#approach').prop( 'checked', true );
		    	  $('#coastal').prop( 'checked', true );
		    	  $('#harbour').prop( 'checked', true );
		    	  $('#berthing').prop( 'checked', true ); 
	  	});

	   
    
	    var locations1 = [
	                     ['Bondi Beach', 40.9616658, 29.0041673, 4],
	                     ['Coogee Beach', 36.3488867, 14.8993175, 5],
	                     ['Cronulla Beach', -34.028249, 151.157507, 3] 
	                     
	                   ];
	   
	    
	    //var locations1	 = "${contacts}";
             
            //alert("${contacts}");
            var p ="${contacts}";

            //alert(p.location);
           // alert(p.slat);
           // alert(p.wlon); 
	                   var map;
	                   
		       
	                  
	                   
              
	      function initMap() 
	      {
	    	  
	    	  if(("${all}" != '0') && ("${overView}" != '1') && ("${general}" != '2') && ("${coastal}" != '3')
	    		&& ("${approach}" != 4)	&& ("${harbour}" != 5) && ("${berthing}" != 6) 
	    	  )
	    	  {
	    		
	    		  $('#all').prop( 'checked', true );
	    		  $('#overView').prop( 'checked', true );
		    	  $('#general').prop( 'checked', true );
		    	  $('#approach').prop( 'checked', true );
		    	  $('#coastal').prop( 'checked', true );
		    	  $('#harbour').prop( 'checked', true );
		    	  $('#berthing').prop( 'checked', true ); 
	    		  
	          }
	    	 
	    	  
	    	  if("${all}" == '0')
	    	  {
	    		  //alert("over :" + "${all}")
	    		  $('#all').prop( 'checked', true );
	    	  }
	    	 
	    	  
	    	  //$('#all').prop( 'checked', true );
	    	  
	    	  if("${overView}" == '1')
	    	  {
	    		  //alert("over :" + "${overView}")
	    		  $('#overView').prop( 'checked', true );
	    	  }
	    	  else
	    	  {
	    		  $('#all').prop( 'checked', false );
	    	  }
	    	 
	    		
	    	  if("${general}" == '2')
	    	  {
	    		$('#general').prop('checked',true);
	    	  }
	    	  
	    	  
	    	  if("${coastal}" == '3')
	    	  {
	    		  $('#coastal').prop('checked',true);	    	 
	          }
	    	 
	    	  
	    	  if("${approach}" == 4)
	    	  {
	    		  $('#approach').prop('checked',true);
	    	  }
	    	  
	    	  
	    	  if("${harbour}" == 5)
	    	  {
	    		  $('#harbour').prop('checked',true);
	          }
	    	  
	    	  
	    	  if("${berthing}" == 6)
	    	  {
	    		$('#berthing').prop('checked',true);
	    	  }
	    	  
	    	  
	    	  
	    	   $.ajax({
	   	    	type:"GET",
	    	       url : 'ajax.html',
	    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
	    	    	   overview : "${overView}"  
	    	       
	    	       },
	    	       
	    	       datatype:"application/json",
	    	      success: function(data){
	    	         parseJson(data);
	    	     }, // what happens when it is successful at loading the XML 
	    	     error: function(){
	    	         //alert("error");
	    	     }   
	    	   });
	   	    
	    	   
	    	   $.ajax({
		   	    	type:"GET",
		    	       url : 'ajax.html',
		    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
		    	    	    general :"${general}" 
		    	       
		    	       },
		    	       
		    	       datatype:"application/json",
		    	      success: function(data){
		    	         parseJson1(data);
		    	     }, // what happens when it is successful at loading the XML 
		    	     error: function(){
		    	         //alert("error");
		    	     }   
		    	   });
	    	   
	    	   $.ajax({
		   	    	type:"GET",
		    	       url : 'ajax.html',
		    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
		    	    	    general :"${coastal}" 
		    	       
		    	       },
		    	       
		    	       datatype:"application/json",
		    	      success: function(data){
		    	         parseJson2(data);
		    	     }, // what happens when it is successful at loading the XML 
		    	     error: function(){
		    	         //alert("error");
		    	     }   
		    	   });
	    	   
	    	   
	    	   map = new google.maps.Map(document.getElementById('map'), {
	           	    zoom: 3,
	           	    center: new google.maps.LatLng( 40.9616658, 29.0041673),
	           	   // mapTypeId: google.maps.MapTypeId.ROADMAP,
	           	    styles: 
	           	    	[
	           	      {
	           	          "featureType": "administrative",
	           	          "elementType": "labels.text.fill",
	           	          "stylers": [
	           	              {
	           	                  "color": "#444444"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "landscape",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "color": "#f2f2f2"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "poi",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "visibility": "off"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "road",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "saturation": -100
	           	              },
	           	              {
	           	                  "lightness": 45
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "road.highway",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "visibility": "simplified"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "road.arterial",
	           	          "elementType": "labels.icon",
	           	          "stylers": [
	           	              {
	           	                  "visibility": "off"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "transit",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "visibility": "off"
	           	              }
	           	          ]
	           	      },
	           	      {
	           	          "featureType": "water",
	           	          "elementType": "all",
	           	          "stylers": [
	           	              {
	           	                  "color": "#3e85a2"
	           	              },
	           	              {
	           	                  "visibility": "on"
	           	              }
	           	          ]
	           	      }
	           	  ]
	           	  });
	    	   
	   	    function parseJson(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	          

	   	    var markers = [];
 	    	var num_markers = data.length;
 	    	 


	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();
	 	    	                 for (i = 0; i < num_markers; i++) {
	 	    	                   //var data = data[i]
	 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

	 	    	                   var rectangle = new google.maps.Rectangle({
	 	    	                     strokeColor: '#472EB0',
	 	    	                    fillColor: '#472EB0',
	 	    	                     strokeOpacity: 0.8,
	 	    	                     strokeWeight: 2,
	 	    	                     map: map,
	 	    	                     bounds: {
	 	    	                       north: parseFloat(data[i].nlat),
	 	    	                       south: parseFloat(data[i].slat),
	 	    	                       east: parseFloat(data[i].elon),
	 	    	                       west: parseFloat(data[i].wlon)
	 	    	                     }
	 	    	                   
	 	    	                   });
	 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	   	 	    	 strokeColor: '#472EB0',
	 	    	                    fillColor: '#472EB0',
	 	    	   	 	    	 icon: iconBase + '',
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	


	 	    	              	         

			
	 	    	 

	 	    
	 	    	  
	   	       }

	   	   
	        
	         
	   	     
	   	       
	   	   // checkbox click
	   	     
	   	    function parseJson1(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	        

	   	    var markers = [];
 	    	var num_markers = data.length;
 	    	 


	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();
	 	    	                 for (i = 0; i < num_markers; i++) {
	 	    	                   //var data = data[i]
	 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

	 	    	                   var rectangle = new google.maps.Rectangle({
	 	    	                     strokeColor: '#087A22',
	 	    	                     fillColor:'#087A22',
	 	    	                     strokeOpacity: 0.8,
	 	    	                     strokeWeight: 2,
	 	    	                     map: map,
	 	    	                     bounds: {
	 	    	                       north: parseFloat(data[i].nlat),
	 	    	                       south: parseFloat(data[i].slat),
	 	    	                       east: parseFloat(data[i].elon),
	 	    	                       west: parseFloat(data[i].wlon)
	 	    	                     }
	 	    	                   
	 	    	                   });
	 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	   	 	    	 strokeColor: '#FB0404',
 	    	                     fillColor:'#FB0404',
	 	    	   	 	    	 icon: iconBase + '',
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	


	 	    	              	         

			
	 	    	 

	 	    
	 	    	  
	   	       }
	   	       
	   	       
	   	    function parseJson2(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	        

	   	    var markers = [];
 	    	var num_markers = data.length;
 	   	var flightPlanCoordinates=[];
    	 // alert(num_markers)
    	 //$.each(data, function(index, value){  
    	for (var i=0;i< num_markers;i++)
 	    {
    		flightPlanCoordinates.push ({lat: data[i].nlat, lng: data[i].wlon}); 	    		
    	}
  	         
  	      
	    	              	         var flightPath = new google.maps.Polyline({
	    	              	           path: flightPlanCoordinates,
	    	              	           geodesic: true,
	    	              	           strokeColor: '#020A85',
	    	              	           fillColor: '#020A85',
	    	              	           strokeOpacity: 1.0,
	    	              	           strokeWeight: 2
	    	              	         });

	    	              	         flightPath.setMap(map);


	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();
	 	    	                 for (i = 0; i < num_markers; i++) {
	 	    	                   //var data = data[i]
	 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

	 	    	                   var rectangle = new google.maps.Rectangle({
	 	    	                     strokeColor: '#020A85',
	 	    	                     fillColor: '#020A85',
	 	    	                     strokeOpacity: 0.8,
	 	    	                     strokeWeight: 2,
	 	    	                     map: map,
	 	    	                     bounds: {
	 	    	                       north: parseFloat(data[i].nlat),
	 	    	                       south: parseFloat(data[i].slat),
	 	    	                       east: parseFloat(data[i].elon),
	 	    	                       west: parseFloat(data[i].wlon)
	 	    	                     }
	 	    	                   
	 	    	                   });
	 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].nlat, lng:data[i].wlon},
	 	    	   	 	    	 
 	    	                    icon: {
 	    	                       path: google.maps.SymbolPath.CIRCLE,
 	    	                       scale: 2,
 	    	                      strokeColor: '#020A85',
	 	    	                     fillColor: '#020A85',
 	    	                     // strokeColor: '#FB0404',
  	    	                    // fillColor: '#FB0404'	
 	    	                     },
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	 
	 	    	  
	   	       }//end of function

	   	  
	   	    $.ajax({
	   	    	type:"GET",
	    	       url : 'ajax.html',
	    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
	    	    	    general :"${harbour}" 
	    	       
	    	       },
	    	       
	    	       datatype:"application/json",
	    	      success: function(data){
	    	         parseJson3(data);
	    	     }, // what happens when it is successful at loading the XML 
	    	     error: function(){
	    	         //alert("error");
	    	     }   
	    	   });
	   	       
	   	    function parseJson3(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	        

	   	    var markers = [];
 	    	var num_markers = data.length;
 	   	 

	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();


		 	    	              	 	 
		 	    	                 for (i = 0; i < num_markers; i++) {
		 	    	                   //var data = data[i]
		 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

		 	    	                   var rectangle = new google.maps.Rectangle({
		 	    	                     strokeColor: '#FBA104',
		 	    	                     fillColor: '#FBA104',
		 	    	                     strokeOpacity: 0.8,
		 	    	                     strokeWeight: 2,
		 	    	                     map: map,
		 	    	                     bounds: {
		 	    	                       north: parseFloat(data[i].nlat),
		 	    	                       south: parseFloat(data[i].slat),
		 	    	                       east: parseFloat(data[i].elon),
		 	    	                       west: parseFloat(data[i].wlon)
		 	    	                     }
		 	    	                   
		 	    	                   });
		 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	   	 	    	 strokeColor: '#FBA104',
 	    	                     fillColor: '#FBA104',
	 	    	   	 	    	 icon: iconBase + '',
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	 
	 	    	  
	   	       }//end of function
	   	       
	   	       
	   	       
	   	       
	   	    $.ajax({
	   	    	type:"GET",
	    	       url : 'ajax.html',
	    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
	    	    	    general :"${approach}" 
	    	       
	    	       },
	    	       
	    	       datatype:"application/json",
	    	      success: function(data){
	    	         parseJson5(data);
	    	     }, // what happens when it is successful at loading the XML 
	    	     error: function(){
	    	         //alert("error");
	    	     }   
	    	   });
	   	       
	   	    function parseJson5(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	        

	   	    var markers = [];
 	    	var num_markers = data.length;
 	   	 

	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();


		 	    	              	 	 
		 	    	                 for (i = 0; i < num_markers; i++) {
		 	    	                   //var data = data[i]
		 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

		 	    	                   var rectangle = new google.maps.Rectangle({
		 	    	                     strokeColor: '#F82E03',
		 	    	                     fillColor: '#F82E03',
		 	    	                     strokeOpacity: 0.8,
		 	    	                     strokeWeight: 2,
		 	    	                     map: map,
		 	    	                     bounds: {
		 	    	                       north: parseFloat(data[i].nlat),
		 	    	                       south: parseFloat(data[i].slat),
		 	    	                       east: parseFloat(data[i].elon),
		 	    	                       west: parseFloat(data[i].wlon)
		 	    	                     }
		 	    	                   
		 	    	                   });
		 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	   	 	    	 strokeColor: '#F82E03',
 	    	                     fillColor: '#F82E03',
	 	    	   	 	    	 icon: iconBase + '',
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	 
	 	    	  
	   	       }//end of function
	   	       
	   	       
	   	       
	   	    $.ajax({
	   	    	type:"GET",
	    	       url : 'ajax.html',
	    	       data : {id : "${k}" ,fromdate: "${fromdate}", todate:"${todate}",
	    	    	    general :"${berthing}" 
	    	       
	    	       },
	    	       
	    	       datatype:"application/json",
	    	      success: function(data){
	    	         parseJson4(data);
	    	     }, // what happens when it is successful at loading the XML 
	    	     error: function(){
	    	         //alert("error");
	    	     }   
	    	   });
	   	       
	   	    function parseJson4(inData)
	   	    {
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	        	
	   	        	
	   	        

	   	    var markers = [];
 	    	var num_markers = data.length;
 	   	 

	 	    	              	 	 var num_markers = data.length;
	 	    	        	   	    //alert(num_markers)
	 	    	        	   		//rectangle
	 	    	        				var bounds = new google.maps.LatLngBounds();


		 	    	              	 	 
		 	    	                 for (i = 0; i < num_markers; i++) {
		 	    	                   //var data = data[i]
		 	    	                 //alert(data[i].slat + " "  + data[i].wlon);

		 	    	                   var rectangle = new google.maps.Rectangle({
		 	    	                     strokeColor: '#FD03C4',
		 	    	                     fillColor: '#FD03C4',
		 	    	                     strokeOpacity: 0.8,
		 	    	                     strokeWeight: 2,
		 	    	                     map: map,
		 	    	                     bounds: {
		 	    	                       north: parseFloat(data[i].nlat),
		 	    	                       south: parseFloat(data[i].slat),
		 	    	                       east: parseFloat(data[i].elon),
		 	    	                       west: parseFloat(data[i].wlon)
		 	    	                     }
		 	    	                   
		 	    	                   });
		 	    	                 }
		 	    	 	    	              	         
	   	      	  
	 	    	                var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

	 	    	              	      var markers = [];
	 	    	   	 	    	  var num_markers = data.length;
	 	    	   	 	    	 // alert(num_markers)
	 	    	   	 	    	 //$.each(data, function(index, value){  
	 	    	   	 	    	for (var i=0;i< num_markers;i++){	 
	 	    	   	 	    		//alert(data[i].slat + " "  + data[i].wlon);
	 	    	   	 	    	    markers[i] = new google.maps.Marker({
	 	    	   	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	   	 	    	 strokeColor: '#FD03C4',
 	    	                     fillColor: '#FD03C4',
	 	    	   	 	    	 icon: iconBase + '',
	 	    	   	 	    	      map: map,
	 	    	   	 	    	  
	 	    	   	 	    	      html: '<div style="height:60px !important">'  
	 	    	   	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td>' + data[i].location + '</td></tr>'
	 	    	   	 	    	      		+ '<tr><td></td></tr>'
	 	    	   	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit1"  data-target-id="'+ data[i].shipname +'" data-target-orderno="'+ data[i].productid +'"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	   	 	    	      		
	 	    	   	 	    	      		
	 	    	   	 	    	      		+ '</table>  </div>',
	 	    	   	 	    	      id: i,
	 	    	   	 	    	       
	 	    	   	 	    	    });
	 	    	   	 	    	    
	 	    	   	 	 
	 	    	   	 	    	  
	 	    	   	 	    	  google.maps.event.addListener(markers[i], 'click', function(){
	 	    	   	 	    	      var infowindow = new google.maps.InfoWindow({
	 	    	   	 	    	        id: this.id,
	 	    	   	 	    	        content:this.html,
	 	    	   	 	    	        position:this.getPosition()
	 	    	   	 	    	      });
	 	    	   	 	    	      google.maps.event.addListenerOnce(infowindow, 'closeclick', function(){
	 	    	   	 	    	        markers[this.id].setVisible(true);
	 	    	   	 	    	      });
	 	    	   	 	    	      this.setVisible(false);
	 	    	   	 	    	      infowindow.open(map);
	 	    	   	 	    	    });
	 	    	   	 	      
	 	    	   	 	    		  
	 	    	   	 	    	  //});
	 	    	   	 	    	 }
	 	    	 
	 	    	  
	   	       }//end of function
	   	       
	   	    }
	    </script>
	    <script async defer
	    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAhrq2EB_LshVY0vqzIrYb1-koRGVDMXw&callback=initMap">
	    </script>
	    
  

<!-- Large modal -->

<div class="modal fade bs-example-modal-lg"  id="edit1"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
        <div class="modal-body">
      
       <form name="PopulateTable2" method="post" action="PopulateTable2">
       <table cellspacing="0" id="countrytable1" class="table table-bordred table-striped"> 
       
		    <tr>  
		        <th scope="col">ProductType</th> 
		        <th scope="col">Product</th> 
		        <th scope="col">Title</th>
		        <th scope="col">Scale</th>
		        <th scope="col">UsageBand</th>
		        <th scope="col">ExpireDate</th>
		        <th scope="col">Status</th>
		        <th scope="col">InstalledInCharts</th>
		        <th scope="col">Approved</th>
		        <th scope="col">Rejected</th>  
		         
		    </tr> 
       
		</table>
		<div class="modal-footer">
		<table> 
		 
			<tr>
				<td>
					<INPUT id="submit1" name="submit" type="submit" value="Submit Items" class="btn btn-success" />
				</td>
				<td></td>
				<td><button type="button" class="btn btn-success" data-dismiss="modal">Close</button></td>
			</tr>
		 </table>
			</div>	
			</form>
		</div>
	   
    </div>
  </div>
</div>
	  
 
 <script>
 
  
 $(document).ready(function(){
	 
	// alert("${k}")
	 //alert("${fromdate}")
	// alert("${todate}")
	 if ( "${k}" == '')
		{
		 	$("#salesrep").val("--select all--");
		}
	 else
		 {
	 		$("#salesrep").val("${k}");
		 }
	 });


 
	
 //$('input').on('change', function() {
	//    var values = $('input:checked').map(function() {
	  //      return this.value;
	  //  }).get();
	    
	   // $('#output').append(values.toString()).append('<br/>');
	//});
 
    $(document).ready(function(){
        $("#edit1").on("show.bs.modal", function(e) {
            var id = $(e.relatedTarget).data('target-id');
            var id1 = $(e.relatedTarget).data('target-orderno');
           
          // alert(id);
           //alert(id1);
            //alert(id + "," + id1 );
            
           
            $.get( "PopulateTable2" , {json4:id,json5:id1}, function( data ) {
            	 if(data!=null){ 
                 	//alert(4)
                 	$("#countrytable1").find("tr:gt(0)").remove();
                 	
                 	 
                     var table1 = $("#countrytable1");
                    
                 	 
                     
                    
                     
                     var tr;
                     for (var i = 0; i < data.length; i++) {
                    	 
                    	 //alert($('#TRUE').val())
                    	 
                    	 
                         tr = $('<tr/>');
                         //tr.append("<td class=""nr"">" + data[i].orderdate + "</td>");
                         tr.append("<td>" + data[i].producttype + "</td>");
                         tr.append("<td>" + data[i].product + "</td>");
                         tr.append("<td>" + data[i].title + "</td>");
                         tr.append("<td>" + data[i].scale + "</td>");
                         tr.append("<td>" + data[i].usageband + "</td>");
                         tr.append("<td>" + data[i].expiredate + "</td>");
                         tr.append("<td>" + data[i].status + "</td>");
                         tr.append("<td>" + data[i].installedInCharts + "</td>");
                        // tr.append("<td>" + data[i].InstalledInCharts + "</td>");                       
                         
                         
                       //  tr.append("<td>" + data[i].approved + "</td>");
                        // tr.append("<td>" + data[i].rejected + "</td>");
                         tr.append("<td> <input TYPE=checkbox   id="+ data[i].product + "  class="+ data[i].approved + "  name=approved VALUE="+ data[i].productid + 
                        		  "   ></td>");
                         tr.append("<td> <input TYPE=checkbox  id="+ data[i].product + "  class="+ data[i].rejected + "  name=rejected VALUE="+ data[i].productid + 
                        		 " ></td>");
                          
                        
                        
                         
                         $("#countrytable1").append(tr);
                       
                         
                         $('#countrytable1').each(function(){

                             //alert(9)
                             $(".TRUE").prop("checked", true);
                             
                            // var items = new Array();
                             //$('#countrytable tr input:checkbox:checked').each(function() {
                               //  items.push($(this).val());
                                // alert(items)
                             //});
                         });
                         
                         
                     }
                    
                     }	
            	 
            	 
                 });
                 $("#tablediv").show();
                
                
            });
        
        
   
        });    
    	 
</script>



<script type="text/javascript">


</script>


 
 <script type="text/javascript">     

  //   $(document).ready(function(){   
         $('#submit1').click(function(){  
        	        	
        	// var id = $(e.relatedTarget).data('target-id');
             //var id1 = $(e.relatedTarget).data('target-orderno');
            
           // alert(id);
          //  alert(id1);
        	 
        	 
             
             
            var Granted = new Array();
            var Denied = []; 
            var rejChecked = new Array();
            var rejUnChecked = new Array();
            var orderno =[];
            var orderdate =[];
            var name ="welcome to new";            
            var json = ["red","blue","green","yellow"];
            
            i =0;
            j =0;
            k =0;
            l =0;
            m =0;
            n =0;
            $('input:checkbox[name=approved]').each(function () {
           	 if (this.checked == true) {
                   // $('.chcktbl:checked').attr('checked', true);
                    //alert($(this).val());
                     Granted[i++] = ($(this).attr('value'));
                }
                else {
                    //$('.chcktbl:not(:checked)').attr('checked', false);
                    //alert($(this).val());
                    Denied[j++] = ($(this).attr('value'));
                
                }
           	 
           	
            });
         	// alert("GRANTED: " +  Granted);
            // alert("DENIED: " +  Denied);
              
             
             $('input:checkbox[name=rejected]').each(function () {
               	 if (this.checked == true) {
                         
                        //alert($(this).val());
                        rejChecked[k++] = ($(this).attr('value'));
                    }
                    else {
                        
                        //alert($(this).val());
                        rejUnChecked[l++] = ($(this).attr('value'));
                    
                    }
                });
             
             var id2= "${fromdate}";
             var id3= "${todate}";
             var id4= "${k}"
            //alert(id);
            //alert(id1);
            // alert(id2  + "," + id3 + ","  + id4);
              
             $('input:checkbox[name=rejected]').each(function () {
            	 orderno[m++] = this.id;
            	// alert(this.id);
             });
             $('input:checkbox[name=approved]').each(function () {
            	 orderdate[n++] = this.id;
            	// alert(this.id);
             });
             
             
             $.post("PopulateTable2",
          			{json:Granted,json1:Denied,json2:rejChecked,json3:rejUnChecked,json4:id2,json5:id3,json6:id4,json7:orderno,json8:orderdate}, function(data) {
          			//	alert(cityName);
          			//	//$("#weatherReport").html(data);
          			});
             
             
            //alert("rejChecked: " +  rejChecked);
           // alert("rejUnChecked: " + rejUnChecked);
                 
                 
           //  $.post("PopulateTable",{arraydata:Granted,mode:"Insert" },
             //        function(data) {
               //            alert("Data Loaded: " + Granted);
                 //    });
             
            // alert(id2);
             		//cityName = json;
         			
         			
         			//$.post("getorderdetails",
                 		//	{json4:id2}, function(data) {
                 			 
                 			//	//$("#weatherReport").html(data);
                 		//	});
             
         });  
//}); 
     
     
     
     
    
</script>


     
 