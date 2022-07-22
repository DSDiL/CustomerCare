<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Form</title>
<link rel="stylesheet" href="Styles/Bootstrap/css/bootstrap.css" />
    
</head>
<body  style="background-color:#e3ebea;">

      <!-- owner insert  starts from here -->
      
      <c:forEach var="customer" items="${customer}">
      	<c:set var="id" value="${customer.id}"></c:set>
      
    <br/>
    <br/>
    <br/>
    <br/>
     <div class="container" style="background-color:#ffffff; width:80%">
       
            <br/>
             <br/>
             <br/>  
             <div class="container">
                <h4 class="text-body" style="text-align:center;">Your message has been received.<br>Reference ID of your message is ${customer.id}.<br>Thank you for your feedback. We will contact you soon</h4> <br/> 
             
                <a href="customerForm.jsp">
                <button type="button" class="btn btn-warning" style="width:100%">Back</button>
             	</a>
              </div>
             <br/>
             <br/>
        </div>     
	  </c:forEach>
	
   <br/>
   <br/>
    <br/>
   <br/>
</body>
</html>