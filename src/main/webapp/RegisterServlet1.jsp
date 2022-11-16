<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<script type="text/javascript">

function myfunction()
{
	
	try
	{
		ServletContext ctx = getServletContext();
		Connection conn = (Connection)ctx.getAttribute("mycon");
		PreparedStatement psmt = conn.prepareStatement("select USERNAME from users  ");
		ResultSet rs = psmt.executeQuery();
		
		String uname1 = document.myform.name1.value;
		
	}
	catch(SQLException e)
	{
		System.out.print(e);
	}

	document.getElementById('user').innerText=user;
	
}
</script>
</head>
<body>
<h2>Welcome to Registration Page</h2>

<form action="registerservlet1" method="post" name="myform">

  <label for="fname">First Name:</label><br>
  <input type="text" id="fname" name="fname1" required><br>
  <label for="lname">Last Name:</label><br>
  <input type="text" id="lname" name="lname1" required><br>
  <label for="uname">User Name:</label><br>
  <input type="text" id="uname" name="uname1"  onclick="myfunction" required><br>
   <div id="user">  </div>
  <label for="email">Email id:</label><br>
  <input type="email" id="email" name="email" required><br>
  <label for="bdate">Birth Date:</label><br>
  <input type="date" id="bdate" name="bdate1" required><br>
  <label for="pwd">Choose Password:</label><br>
  <input type="password" id="pwd" name="pwd1"  required><br>
  <label for="rpwd">Confirm Password:</label><br>
  <input type="password" id="rpwd" name="rpwd" required><br>
  
  Select Security Question:<br>
 <select name="question" id="que">
   <option value="0">Select</option>
   <option value="Name of city where you born.">Name of city where you born.</option>
   <option value="Mother maiden name.">Mother maiden name.</option>
   <option value="Name of first car.">Name of first car.</option>
   <option value="Name of first school.">Name of first school.</option>
 </select>
  <input type="text" name="answer" id="ans"><br>
  <input type="checkbox"  name="condition" value="checked" required />Agree Terms and Condition.
 
  <br>
  <a href="LoginServlet1.jsp">Already Logged In!!</a><br>
  <br>
  <input type="reset" value="Reset">
  <input type="submit" value="Register" >

</form>

<script>
String name1 = request.getParameter("name1");
System.out.print(name1);

System.out.print(document.myform.uname1.value);
function myfunction()
{

	psmt.setString(1,name1);
	
	
	
	
	while(rs.next())
	{
		var user;
		System.out.print(document.myform.uname1.value);
		
		if(document.myform.uname1.value==rs.getString(1))
			{
			out.print("Already taken this Username. Please try other one.");
			}
		
		
			
		
		else
		{
			
		}
	}
	
}

}
   
</script>  

</body>
</html>