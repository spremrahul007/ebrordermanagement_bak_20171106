<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
     <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
<div class="container">
	<div class="row">
		
        Login Message : ${firstname}
        <div class="col-md-12">
        <h4>Bootstrap Snipp for Datatable</h4>
        <div class="table-responsive">

 
              <table id="mytable" class="table table-bordred table-striped">
                   
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
						<td><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target-id="${contact.shipname}" data-target="#myModal">View All Details</button></td>
						<td><p id="showTable" data-id="1" data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"  data-target-id="${contact.shipname}"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
						 							
		        	</tr>
        	 </c:forEach>
         </tr>
     
    </tbody>
        
</table>

 


    
    <!-- Large modal -->

<div class="modal fade bs-example-modal-lg"  id="edit"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      
       
       <form name="orderdetails" method="post" action="orderdetails">
        <table cellspacing="0" id="countrytable" class="table table-bordred table-striped"> 
        
    <tr>  
    	 
        <th scope="col">ProductType</th> 
        <th scope="col">Product</th> 
        <th scope="col">Approved</th> 
        <th scope="col">Rejected</th> 
        
        <th scope="col">Approved  </th> 
        
         <th scope="col">Rejected</th> 
      
         
         
        
    </tr> 
      
</table>
 
<table>
	<tr>
		<td>
			<INPUT id="submit"  name="submit"  type="submit" value="Submit Items"/>
		</td>
	</tr>
</table>

</form>

<div id="output"></div>
    </div>
  </div>
</div>
    
   
     
 <script>
 
  
 

 
	
 $('input').on('change', function() {
	    var values = $('input:checked').map(function() {
	        return this.value;
	    }).get();
	    
	    $('#output').append(values.toString()).append('<br/>');
	});
 
    $(document).ready(function(){
        $("#edit").on("show.bs.modal", function(e) {
            var id = $(e.relatedTarget).data('target-id');
           // alert(id);
            $.get( "PopulateTable" , function( data ) {
            	 if(data!=null){ 
                 	//alert(4)
                 	$("#countrytable").find("tr:gt(0)").remove();
                 	
                 	 
                     var table1 = $("#countrytable");
                    
                 	 
                     
                    
                     
                     var tr;
                     for (var i = 0; i < data.length; i++) {
                    	 
                    	 //alert($('#TRUE').val())
                    	 
                    	 
                         tr = $('<tr/>');
                         tr.append("<td>" + data[i].producttype + "</td>");
                         tr.append("<td>" + data[i].product + "</td>");
                         tr.append("<td>" + data[i].approved + "</td>");
                         tr.append("<td>" + data[i].rejected + "</td>");
                         tr.append("<td> <input  id="+ data[i].productid + " TYPE=checkbox class="+ data[i].approved + "  name=approved VALUE="+ data[i].productid + 
                        		  "   ></td>");
                         tr.append("<td> <input  id="+ data[i].productid + " TYPE=checkbox class="+ data[i].rejected + "  name=rejected VALUE="+ data[i].productid + 
                        		 " ></td>");
                          
                        
                        
                         
                         $("#countrytable").append(tr);
                       
                         
                         $('#countrytable tr td').each(function(){

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
     
     
     $(document).ready(function(){   
         $('#submit').click(function(){  
        	 
        	 var someObj = {};
             var Granted = new Array();
            var Denied = []; 
            i  =0;
            j =0;
            $(".TRUE").each(function () {
           	 if (this.checked == true) {
                    $('.chcktbl:checked').attr('checked', false);
                    alert($(this).val());
                     Granted[i++] = ($(this).attr('id'));
                }
                else {
                    $('.chcktbl:not(:checked)').attr('checked', true);
                    alert($(this).val());
                    Denied[j++] = ($(this).attr('id'));
                
                }
            });
          alert("GRANTED: " +  Granted);
             alert("DENIED: " +  Denied);
             
             
             $.post("PopulateTable",{arraydata:Granted,mode:"Insert" },
                     function(data) {
                           alert("Data Loaded: " + Granted);
                     });
         });  
 });  
     
    
</script>

<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<script src="resources/js/edit.js">

</script>
	

    
    