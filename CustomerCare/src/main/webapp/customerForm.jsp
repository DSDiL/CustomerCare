<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Form</title>

      <link rel="stylesheet" href="Styles/Bootstrap/css/bootstrap.css" />
    
</head>
<body  style="background-color:#e3ebea;">

      <!-- owner insert  starts from here -->
    <br/>
    <br/>
    <br/>
    <br/>
     <div class="container" style="background-color:#ffffff; width:80%">
       
            <br/>
           
          
             <br/>
             <br/>  
             <div class="container">
             <div class="row">  
              <div class="col-4">
                <h3 class="text-body" style="text-align:center;">Contact E Tell </h3> <br/> 
                <p>
                 E Tell Customer Care Team handles all Customer complaints and Service requests. All of these will be properly documented and escalated in our system in order to track and improve our service to our customers.

                 To provide excellent services to customers, the customer care center in collaboration with the after sales service team are working dedicatedly from Monday to Saturday within office hours.
                </p>
                <p>
                 You can get in touch with our Customer Care on  + 94 112 055 558.
                </p>
                  <img src="images/5138237.jpg" style="width:90%"> 
              </div>  
                <div class="col-1"></div> 
               <div class="col-6">
               
             <form action="CustomerInsert" method="post">
             
              <div class="form-group" >
                <label>Name</label>
                <input type="text" name="name" class="form-control"  placeholder="Anna Silva" id="name" required="required">
             </div>
 
              <div class="form-group">
               <label>Email</label>
               <input type="text" name="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="anna@gmail.com" id="email" required="required" >
             </div>
 
             <div class="form-group">
               <label>Address</label>
               <input type="text" name="addr" class="form-control"  placeholder="162 Wijayaba pl,Malabe" id="address" required="required" >
             </div>
 
             <div class="form-group">
               <label>Contact Number</label>
               <input type="tel" name="tel" class="form-control" pattern="0+[0-9]{9}" placeholder="0812050664" id="contactno" required="required" >
             </div>
             
              <div class="form-group" >
                <label>What can we do for you ?</label><br>
                <textarea name="message" class="form-control"  id="message" rows="5" cols="50" required="required"> </textarea>
             </div>
  
             <button type="submit" class="btn btn-warning" style="width:100%">Send</button>
              <br/>
             <br/>
             </form>
              
               <br/>
             <br/>
              
             </div>
             <br/>
             <br/>
        </div>     
     </div>

  </div>
   <br/>
   <br/>
    <br/>
   <br/>
</body>
</html>