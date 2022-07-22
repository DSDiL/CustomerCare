<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer list</title>

      <link rel="stylesheet" href="Styles/Bootstrap/css/bootstrap.css" />

</head>
<body style="background-color:#e3ebea;">
     
       <br> <br>
        <div class="container" style="background-color:#ffffff; width:80%">
        <h3 style="text-align : center">Customer Messages list</h3>
       <br> <br>
       
        <table class="table table-striped" id="myTable">
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Contact No</th>
                <th scope="col">Message</th>
                <th scope="col">Status</th>
                <th scope="col">Update</th>
                <th scope="col">Delete</th>
             </tr>
             <c:forEach var="customer" items="${customer}">
      			<c:set var="id" value="${customer.id}"></c:set>
      			<c:set var="name" value="${customer.name}"></c:set>
      			<c:set var="email" value="${customer.email}"></c:set>
      			<c:set var="addr" value="${customer.addr}"></c:set>
      			<c:set var="tel" value="${customer.tel}"></c:set>
      			<c:set var="message" value="${customer.message}"></c:set>
      			<c:set var="completed" value="${customer.completed}"></c:set>
      					
			<tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.addr}</td>
                <td>${customer.tel}</td>
                <td>${customer.message}</td>
                <td>${customer.completed}</td>
                <td>
                <c:url value="customerUpdate.jsp" var="update">
		  			<c:param name="id" value="${id}"/>
		  			<c:param name="name" value="${name}"/>
		  			<c:param name="email" value="${email}"/>
		  			<c:param name="addr" value="${addr}"/>
		  			<c:param name="tel" value="${tel}"/>
		  			<c:param name="message" value="${message}"/>
		  			<c:param name="completed" value="${completed}"/>
		  		</c:url>
				<a href="${update}">
					<button type="button" class="btn btn-info">Update</button>
				</a>
				</td>
                	<form action="CustomerDelete" method="post">
                <td>
                	<button type="submit" value="${customer.id}" name="id" class="btn btn-danger" onclick="check()">Delete</button>
               	</td>
               	</form>
             </tr>
             </c:forEach>
           </table>
           
           <a href="MainNavigation.jsp">
           		<button type="button" class="btn btn-warning">Back</button>
           </a>
         
        <br> <br>
        </div>
       <br> <br>
       
       <script type="text/javascript">
       
   		function check() {
   			
   			var result = confirm('Are you sure you want to delete this message?');
   			
   			if (result == false) {
   				event.preventDefault();
   			}
   		}
       
       </script>

</body>
</html>