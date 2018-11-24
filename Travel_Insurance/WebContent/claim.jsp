<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Form</title>
</head>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
{box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>


<script type="text/javascript">

            function validate()
            {
      var fn = document.forms["val"]["firstname"].value;
      var ln = document.forms["val"]["lastname"].value;
      var d = document.forms["val"]["destination"].value;
      var sd = document.forms["val"]["startdate"].value;
      var ed = document.forms["val"]["enddate"].value;
      var mob = document.forms["val"]["mobile"].value;
      var pn = document.forms["val"]["policyname"].value;
      var amt = document.forms["val"]["amount"].value;
      var add = document.forms["val"]["address"].value;
      var city = document.forms["val"]["city"].value;
      var pin = document.forms["val"]["pincode"].value;
      var state = document.forms["val"]["state"].value;
      var country = document.forms["val"]["country"].value;
      var regex = /^[A-Za-z].*/
      var date1 = /^\d{4}-\d{2}-\d{2}$/
      
      var amount = /^[0-9].*/
      
                  var valid = true;
                if(fn.length<=0 && ln.length<=0 && d.length<=0 && sd.length<=0 && ed.length<=0 && pn.length<=0 && amt.length<=0 &&mob.length<=0 && add.length<=0 && city.length<=0 && pin.length<=0 && state.length<=0 && country.length<=0 )
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
      if(!regex.test(fn) && !regex.test(ln) && !regex.test(d) && !regex.test(add) && !regex.test(city) && !regex.test(state) && !regex.test(country))
      {
            alert("enter the alphabets only");
            valid=false;      
      }
      if(!date1.test(sd) && !date1.test(ed))
      {
            alert("invalid date format");
            valid=false;
      }
      if(!amount.test(pin)&& pin.length()<=6 )
      {
            alert("invalid pincode");
            valid=false;      
      }
      if(!amount.test(amt))
      {
            alert("invalid amount");
            valid=false;
      }
      if(!amount.test(mob) && mob.length<=10)
      {
        alert("invalid mobile");
          valid=false;
      }
     return valid; 
    }
        </script>


<body>  

<%
HttpSession s=request.getSession(false);
Integer loginId=(Integer)s.getAttribute("loginId");
String name=(String)s.getAttribute("username");
%>

<form align="right" name="form1" action="UserLogOut" method="get">
  	<label>
  		<h3> Hii <%=name%></h3><br>
  		<input name="submit2" type="submit" id="submit2" value="log out">
  	</label>
  </form>


<% if (loginId!=null) { %> 


<form action="ClaimServlet" method="post" style="border:1px solid #ccc" name="val" onsubmit="return validate()" >
  <div class="container">
    <h1>Claim Registration Form</h1>
    <p>Please fill in this form to claim your policy</p>
    <hr>

    <label for="firstname"><b>Policy Number</b> <font colour:'red'></label>
    <input type="text" placeholder="Policy Number" name="policyno" required>
    
   
    <label for="lastname"><b>Name</b></label>
    <input type="text" placeholder="Name" name="name" required>
    
    <label for="destination"><b>Contact Number</b></label>
    <input type="text" placeholder="Contact Number" name="contactnumber" required>
    
    <label for="Message"><b>Message</b></label>
     
    <input type="text"placeholder="Enter some text here" name="message" required>
    
    
     
     
    <div class="clearfix">

     
    <a href="premium.jsp"><button type="button" class="cancelbtn" onclick= >Cancel</button></a>
    
     
      <button type="submit" class="signupbtn">Register</button>
       
    </div>
  </div>
</form>
<% } else {%>
   	<%

    response.sendRedirect("signup.jsp");
%>
<% } %>
</body>
</html>