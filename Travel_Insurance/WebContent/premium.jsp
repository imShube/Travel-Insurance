<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Premium Calculator</title>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="C:\Users\701716\Desktop\project\images\images7.jpg" alt="Italian Trulli">

</head>



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style type="text/css">
 body {
    display: table-cell;
    align: middle;
	 
}

</style>

<script type="text/javascript">

            function validate()

            {

                var sd =document.forms["val"]["startdate"].value;

                var ed =document.forms["val"]["enddate"].value;

                var am = document.forms["val"]["amount"].value;

                var mem = document.forms["val"]["totalmembers"].value;
				var td =  document.forms["val"]["totaldays"].value;
				var ty = document.forms["val"]["select"].value;
 
                var a=0;
                var valid = true;

                var date = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/

                var amt = /^[0-9].*/
var mem1=/^[0-5]{1}/

                if(sd.length<=0 && ed.length<=0 && am.length<=0 && mem.length<=0)

                {

                        alert("Don't leave the field empty!");

                        valid = false;

                }

                if(!date.test(sd) && !date.test(ed))

                {

                   alert("enter valid date");

                   valid = false;

                }

                if(!amt.test(am))

                {

                   alert("enter valid amount");

                   valid = false;

                }
                if(!amt.test(td) && td>30)
               {
alert("enter valid total days");
                }

                if(!mem1.test(mem))

                {

                   alert("enter valid members 0-5");

                   valid = false;

                }
                else
               {
                	if(td>0 && td <=5)
                	{
                		a=0;
                	}     
					if(td >5 && td <=10)
					{
						a=100;
					}
					if(td >10 && td <=15)
					{
						a=200;
					}
					if(td >15 && td <=20)
					{	
						a=300;
					}
					if(td>20) 
					{
						a=400;
					}
					if(ty == "Domestic")
					{

					var s = (0.02*am*mem)+a; 

                   var g = (0.04*am*mem)+a; 

                   var p = (0.06*am*mem)+a; 
 
                  document.getElementById("silver").value= Math.round(s);
document.getElementById("gold").value = Math.round(g);
document.getElementById("platinum").value = Math.round(p);
                   }
else
{
var s = (0.04*am*mem)+a; 

                   var g = (0.06*am*mem)+a; 

                   var p = (0.08*am*mem)+a; 
 
                  document.getElementById("silver").value= Math.round(s);
document.getElementById("gold").value = Math.round(g);
document.getElementById("platinum").value = Math.round(p);

}
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

<center>

<div class="container-fluid">

<div class="row">

    <div class="col-md-6 col-md-offset-3">

        <h2>premium calculator</h2>

        <p>

            enter details below and find your premium

        </p>
     <form name="val" action="#" onsubmit="return validate()">

            <div class="row">

                <div class="col-sm-6 form-group">

                    <label for="startdate">

                        start date:</label>

                    <input type="text" class="form-control" placeholder="dd-mm-yyyy"  name="startdate"  maxlength="50" required>

                </div>

                <div class="col-sm-6 form-group">

                    <label for="enddate">

                       end date:</label>

                    <input type="text" class="form-control" placeholder="dd-mm-yyyy" name="enddate"  maxlength="50" required>

                </div>
            </div>
            <div class="row">

                <div class="col-sm-6 form-group">

                    <label for="amount">

                        TicketAmount:</label>

                    <input type="text" class="form-control" placeholder="0" id="amount" name="amount" maxlength="50" required>

                </div>

               

                <div class="col-sm-6 form-group">

                    <label for="totalmembers">

                        Total Members:</label>

                    <input type="text" class="form-control" placeholder="0" name="totalmembers" maxlength="50" required >

                </div>

                <div class="col-sm-6 form-group">

                    <label for="totaldays">

                        TotalDays:</label>
                          
                    <input type="text" class="form-control" placeholder="0" name="totaldays" maxlength="50" required >
                       
                </div>

                <div class="col-sm-12 form-group">
                  <select class="form-control" required name="select">
                   
                       <option value="Domestic" name="Domestic">Domestic</option>
					   <option value="International" name="DOmestic">International</option>
					  
                              </select>

                </div>

            <div class="col-sm-12 form-group">

                    <button type="button" class="btn btn-lg btn-success btn-block" id="btnContactUs" onclick="validate()">Calculate</button>
                    
            </div>
 			</form>
 			

			<div class="col-sm-6 form-group">

                    <label for="SilverPlan">

                        Silver Plan:</label>
			     <form name="val" action="regIndex.jsp">
                    <input name="platinum"  id="silver" class="form-control" placeholder="0" >
                    <br><button type="submit" class="btn btn-lg btn-success btn-block">Buy</button>
 				 </form> 
                     
                  </div>	
                  
                 
                  
				<div class="col-sm-6 form-group">
			    <label for="GoldPlan">
			    Gold Plan:</label>
			    <form name="val" action="regIndex.jsp">
				<input name="platinum" id="gold" class="form-control" placeholder="0" >
				 <br><button type="submit" class="btn btn-lg btn-success btn-block" >Buy</button>
                 </form>
                  </div>
				  
				  
				 
				<div class="col-sm-6 form-group">
 					<label for="PlatinumPlan">
 						Platinum Plan:</label>
				  <form name="val" action="regIndex.jsp">
                    <input name="platinum" id="platinum" class="form-control" placeholder="0" >
  					<br><button type="submit" class="btn btn-lg btn-success btn-block">Buy</button> 
                  </form>
                </div>
                                   
                   
                  <div class="col-sm-6 form-group">
                   <form name="val"> 
				  <br><a href="claim.jsp"><button type="button" class="btn btn-lg btn-success btn-block">Claim</button></a>           
                  </form>
                  </div>
                   
		</div>
      </div>
 </div>

</div>

 </form>

</center>
<% } else {%>
   	<%

    response.sendRedirect("signup.jsp");
%>
<% } %>


</body>
</html>
