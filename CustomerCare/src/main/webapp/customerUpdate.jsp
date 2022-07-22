			<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Message</title>

      <link rel="stylesheet" href="Styles/Bootstrap/css/bootstrap.css" />

</head>
<body style="background-color:#e3ebea;">
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	String message = request.getParameter("message");
	String completed = request.getParameter("completed");
%>
<br/>
    <br/>
    <br/>
    <br/>
    
     <div class="container" style="background-color:#ffffff; width:80%">
            <br/>
             <br/>
             <br/> 
             <h3 style="text-align:center">Customer Message Update</h3>
             <br>
             
      <div class="container" style="width:70%">
      		
      		<form action="CustomerUpdate" method="post">

             <div class="form-group" >
                <label>Message ID</label>
                <input type="text" name="id" class="form-control" value="<%=id%>" id="name" readonly>
             </div>
             
              <div class="form-group" >
                <label>Name</label>
                <input type="text" name="name" class="form-control" value="<%=name%>" id="name" readonly>
             </div>
 
              <div class="form-group">
               <label>Email</label>
               <input type="text" name="email" class="form-control"  value="<%=email%>" id="email" readonly>
             </div>
 
             <div class="form-group">
               <label>Address</label>
               <input type="text" name="addr" class="form-control" value="<%=addr%>" id="address" readonly>
             </div>
 
             <div class="form-group">
               <label>Contact Number</label>
               <input type="text" name="tel" class="form-control" value="<%=tel%>" id="contactno" readonly>
             </div>
             
              <div class="form-group" >
                <label>Message</label>
                <textarea type="text" name="message" class="form-control" id="message" readonly><%=message%></textarea>
             </div>
             
             <div class="form-group" >
                <label>Message</label>
				<select class="form-control" name="completed" required>
           			<option value="<%=completed%>"><%=completed%></option>
           			
           			<c:set var="completed" value="<%=completed%>"></c:set>
           			
           			<c:if test="${completed=='Pending'}">
           				<option value="Completed">Completed</option>
           			</c:if>
           			<c:if test="${completed=='Completed'}">
           				<option value="Pending">Pending</option>
           			</c:if>
           			
              	</select>             
              	</div>
  
             <button type="submit" class="btn btn-warning" style="width:50%">Update</button>
              <br/>
             <br/>
             </form>
              <br/>
             <br/>	
      </div> 
      <br/>
      <br/>             
      </div> 
      <br/>
   <br/>
    <br/>
   <br/>

</body>
</html>

				
				<c:if test="${completed=='Pending'}">
              		<td></td>
              		<td>
              			<button type="submit" class="btn btn-info" name="id" value="${customer.id}">Update</button>
              		</td>
               </c:if>
                	
               	<c:if test="${completed=='Completed'}">
               		<td>${customer.completed}</td>
               		<td></td>
               	</c:if>