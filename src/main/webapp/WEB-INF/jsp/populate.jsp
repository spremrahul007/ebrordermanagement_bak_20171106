<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
  
 
<script type="text/javascript">
$(document).ready(function() {
	$("#tablediv").hide();
     $("#showTable").click(function(event){  
           $.get('PopulateTable',function(responseJson) {alert(1)
        	   if(responseJson!=null){
            	   $("#countrytable").find("tr:gt(0)").remove();
            	   var table1 = $("#countrytable");
	               $.each(responseJson, function(key,value) { 
	               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
	               		  rowNew.children().eq(0).text(value['orderdate']); 
	                        rowNew.children().eq(1).text(value['shipname']); 
	                        rowNew.children().eq(2).text(value['price']); 
	                       rowNew.appendTo(table1);
	               });
                }
            });
            $("#tablediv").show();          
	 });      
});
</script>
 
 
<h1>AJAX Retrieve Data from Database in Servlet and JSP using JSONArray</h1>
<h4>Demo by Priya Darshini, Tutorial at www.programming-free.com</h4>
<input type="button" value="Show Table" id="showTable"/>
<br/>
<br/>
<div id="tablediv">
<table cellspacing="0" id="countrytable"> 
    <tr> 
       <th scope="col">orderdate</th> 
        <th scope="col">shipname</th> 
        <th scope="col">price</th>       
    </tr> 
</table>
</div>
 

<!-- Large modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg" >Large modal</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      
    </div>
  </div>
</div>