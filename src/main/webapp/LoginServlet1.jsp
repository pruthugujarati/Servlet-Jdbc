<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<h2>Welcome to Login Page</h2>

<form action="loginservlet1" method="post">
  Enter UserName : <br><input type="text" name="uname2" required><br>
  Enter Password : <br><input type="password" name="pwd2" required><br>
  
 <%--  Answer your Security question:<br>
  <%
    ServletContext con = getServletContext();
    String s6 = (String) con.getAttribute("question"); 
	out.print("<br>"+s6);
  %> --%>
  
	<br>
	
  <a href="RegisterServlet1.jsp">Haven't Register!!</a><br>
  <br>
 
  <input type="submit" value="Login">
</form>


</body>
</html>