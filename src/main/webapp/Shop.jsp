<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Flyers:</h2>
Select Stock:
  <select name="stock">
    <option value="Print1side">Print 1 side</option>
    <option value="Print2side">Print 2 side</option> 
  </select>
  <br><br>
Select Qty:
  <select name="qty" id="qty">
     <option value="50">50</option>
     <option value="100">100</option>
     <option value="500">500</option>
     <option value="1000">1000</option>
     <option value="2500">2500</option>
     <option value="5000">5000</option> 
  </select>
  <br><br>
Select Size:  
  <select name="size">
    <option value="4 X 6">4 X 6</option>
    <option value="5 X 7">5 X 7</option>
  </select>
  <br><br>
Select Coating:  
  <select name="coating">
    <option value="No Coating">No Coating</option>
    <option value="Coating">Coating</option>
  </select>
<br><br>
<h2>Regular Price: 50$</h2>

<%
String stock1 = request.getParameter("stock");
out.print(stock1);
  
%>
<script type="text/javascript">
  var qty= document.getElementById('qty');
  var total=document.getElementByClassName('total');
  function subtotal()
  {
	  for(i=0;i<qty.length;i++)
		  {
		  total.innerText=(qty[i].value)*2;
		  }
  }
  subtotal();
</script>

<form action="logoutservlet1" method="post">
   <input type="submit" value="LogOut">
</form>
</body>
</html>