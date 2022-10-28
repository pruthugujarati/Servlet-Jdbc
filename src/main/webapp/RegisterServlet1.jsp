<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<h2>Welcome to Registration Page</h2>

<form action="registerservlet1" method="post">

  <label for="fname">First Name:</label><br>
  <input type="text" id="fname" name="fname1" required><br>
  <label for="lname">Last Name:</label><br>
  <input type="text" id="lname" name="lname1" required><br>
  <label for="uname">User Name:</label><br>
  <input type="text" id="uname" name="uname1"  required><br>
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
</body>
</html>