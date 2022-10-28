<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Login successfully done!!!</h2>
<%
String uname2 = request.getParameter("uname2");
String url = "jdbc:mysql://localhost:3306/USERDB";
String user ="root";
String pass = "Pgujarati108@@";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, user, pass);
	
	Statement st1 = conn.createStatement();

    ResultSet rs = st1.executeQuery("select * from users");
while(rs.next())
{
	if(rs.getString(1).equals(uname2))
	{
		String que = rs.getString(6);
		out.print("Security Question : <br>" +que);
		
		String ans = rs.getString(7);
		ServletContext con = getServletContext();
		con.setAttribute("Ans", ans);
	}
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<br>


<form action="welcome" method="post" >
  <input type="text" name="Answer"><br>
  <input type="submit" value="Login">
</form>
</body>
</html>