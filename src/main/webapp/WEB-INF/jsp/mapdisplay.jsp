	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
 
	<!-- Large modal -->
     
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<!-- Large modal -->


	    <style>
	       #map {
	 border:1px solid black;
  height: 400px;
  width: 100%;
  border-radius: 4px;
	       }
	    </style>
	    
	    
	    
     <ul class="nav nav-tabs" id="myTab">
			  <li class="active"><a data-target="#home" data-toggle="tab">Home</a></li>
			  <li><a data-target="#profile" data-toggle="tab">Profile</a></li>
			  <li><a data-target="#messages" data-toggle="tab">Messages</a></li>
			  <li><a data-target="#settings" data-toggle="tab">Settings</a></li>
			</ul>

			<div class="tab-content">
			  <div class="tab-pane active" id="home">Home</div>
			  <div class="tab-pane" id="profile">Profile</div>
			  <div class="tab-pane" id="messages">Message</div>
			  <div class="tab-pane" id="settings">Settings</div>
			</div>
	 
	    <h3>My Google Maps Demo</h3>
	    <div id="map"></div>
	    
	    
	    

	    <script>        
	    
	 
	        
	         
    
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
	                   

	                  
              
	      function initMap() {
	    	  
	    	   $.ajax({
	   	    	type:"GET",
	    	       url : 'ajax.html',
	    	       datatype:"application/json",
	    	      success: function(data){
	    	         parseJson(data);
	    	     }, // what happens when it is successful at loading the XML 
	    	     error: function(){
	    	         alert("error");
	    	     }   
	    	   });
	   	    
	   	    function parseJson(inData){
	   	    	data = eval(inData);
	   	    	data = $.parseJSON(data);
	   	        //alert( data);
	   	       // $.each(data, function(index, value){
	   	        	//alert(value.productid);
	   	        	
	   	        	
	   	         map = new google.maps.Map(document.getElementById('map'), {
	           	    zoom: 3,
	           	    center: new google.maps.LatLng( 40.9616658, 29.0041673),
	           	    mapTypeId: google.maps.MapTypeId.ROADMAP
	           	  });
	   	      	  
	   	          var markers = [];
	 	    	  var num_markers = data.length;
	 	    	  alert(num_markers)
	 	    	 //$.each(data, function(index, value){  
	 	    	for (var i=0;i< num_markers;i++){	 
	 	    		alert(data[i].slat + " "  + data[i].wlon);
	 	    	    markers[i] = new google.maps.Marker({
	 	    	      position: {lat:data[i].slat, lng:data[i].wlon},
	 	    	      map: map,
	 	    	      html: '<div style="height:150px !important">'  
	 	    	      		+ '<table><tr><td>' + data[i].productid + '</td></tr><tr><td>Enter Price</td></tr><tr><td><input type="text" name="prc" id="prc" /></td></tr>'
	 	    	      		+ '<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"  data-target-id="MV EASY 1" data-target-orderno="Nr32/18"> <span class="glyphicon glyphicon-edit"></span></button></p></td>'
	 	    	      		
	 	    	      		
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
	   	    }
	    	 
	      
	    </script>
	    <script async defer
	    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAhrq2EB_LshVY0vqzIrYb1-koRGVDMXw&callback=initMap">
	    </script>
	 
	
	 <script type="text/javascript">
	  $(document).ready(function(){
	    	 

	    	}); 
	  
	  
	  
	  </script>
	  
	  
	  

<!-- Large modal -->

<div class="modal fade bs-example-modal-lg"  id="edit"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
        <div class="modal-body">
      
       <form name="PopulateTable1" method="post" action="PopulateTable1">
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
           
           alert(id);
           alert(id1);
            //alert(id + "," + id1 );
            
           
            $.get( "PopulateTable1" , {json4:id,json5:id1}, function( data ) {
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
             
             
             $.post("PopulateTable1",
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





<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script> 
 
 

 
    
    
    
    
    
     <!-- Modal HTML -->
    <div id="myModal" class="modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p>Do you want to save changes you made to document before closing?</p>
                    <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    
    
    <script type="text/javascript">
$(document).ready(function(){
    function alignModal(){
        var modalDialog = $(this).find(".modal-dialog");
        
        // Applying the top margin on modal dialog to align it vertically center
        modalDialog.css("margin-top", Math.max(0, ($(window).height() - modalDialog.height()) / 2));
    }
    // Align modal when it is displayed
    $(".modal").on("shown.bs.modal", alignModal);
    
    // Align modal when user resize the window
    $(window).on("resize", function(){
        $(".modal:visible").each(alignModal);
    });   
});
</script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>