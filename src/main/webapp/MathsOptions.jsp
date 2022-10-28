<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Choose Operation:</h2>
  
<form action="maths" method="post">

   Enter 1st number : <input type="text" name="num1"><br>
   Enter 2nd number : <input type="text" name="num2"><br>

    <input type="radio" id="add" name="ans" value="Addition" >
    <label for="add">Addition</label><br>
    <input type="radio" id="sub" name="ans" value="Substraction" >
    <label for="sub">Substraction</label><br>
    <input type="radio" id="multi" name="ans" value="Multiplication">
    <label for="multi">Multiplication</label><br>
    <input type="radio" id="div" name="ans" value="Division">
    <label for="div">Division</label><br>
    
  <input type="submit">
  <input type="reset" value="Reset">
  
  
</form>
<br>
<form action="logoutservlet1" method="post">
   <input type="submit" value="LogOut">
</form>
</body>
</html>