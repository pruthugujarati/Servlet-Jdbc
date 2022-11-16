<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Price List</title>
</head>
<body>
<h2>Flyer Printing</h2>
<form name="myform">
<b>Stock:</b><br>
<select name="stock" onclick="showprice()">
  <option value="100LB Gloss Text Printed 1 side(4/0)">100LB Gloss Text Printed 1 side(4/0)</option>
  <option value="100LB Gloss Text Printed 2 side(4/4)">100LB Gloss Text Printed 2 side(4/4)</option>
</select>

<br>
<br><b>Size:</b><br>
<select name="size" onclick="showprice()">
  <option value="8.5 X 3.5">8.5 X 3.5</option>
  <option value="8.5 X 5.5">8.5 X 5.5</option>
  <option value="8.5 X 11">8.5 X 11</option>
  <option value="8.5 X 14">8.5 X 14</option>
  <option value="8 X 10">8 X 10</option>
</select>
<br>
<br><b>Qty:</b><br>
<select name="qty" onclick="showprice()">
  <option value="25">25</option>
  <option value="50">50</option>
  <option value="100">100</option>
  <option value="500">500</option>
  <option value="1000">1000</option>
  <option value="2500">2500</option>
  <option value="5000">5000</option>
</select>
<br>
<br><b>Coating:</b><br>
<select name="coating">
  <option value="No Coating">No Coating</option>
</select>
<br>
<br><b>TurnAround:</b><br>
<select name="turnaround">
  <option value="4-5 Business Days">4-5 Business Days</option>
</select><br>
 
 <br>
 <h3> <div id="show"> Regular Price : 30.54$ </div></h3>
</form>

		
<script type="text/javascript">
 function showprice()
 {
	 var price;
		
		if( document.myform.stock.value=="100LB Gloss Text Printed 1 side(4/0)" )
			{
			
			switch(document.myform.size.value)
			{
			case "8.5 X 3.5":
				
				switch(document.myform.qty.value)
				{
				    case "25":
					    price="Regular Price : 30.54$" 
					    break;
					case "50":
						price="Regular Price : 40.22$"
						break;
					case "100":
						price="Regular Price : 45.80$"
						break;
					case "500":
						price="Regular Price : 52.20$"
						break;
					case "1000":
						price="Regular Price : 59.50$"
						break;
					case "2500":
						price="Regular Price : 65.14$"
						break;
					case "5000":
						price="Regular Price : 75.80$"
						break;
					}
				break;
				
			case "8.5 X 5.5":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 32.54$"
					    break;
					case "50":
						price="Regular Price : 42.22$"
						break;
					case "100":
						price="Regular Price : 48.80$"
						break;
					case "500":
						price="Regular Price : 58.20$"
						break;
					case "1000":
						price="Regular Price : 63.50$"
						break;
					case "2500":
						price="Regular Price : 70.14$"
						break;
					case "5000":
						price="Regular Price : 80.80$"
						break;
					}
				break;

			case "8.5 X 11":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 35.44$"
					    break;
					case "50":
						price="Regular Price : 45.22$"
						break;
					case "100":
						price="Regular Price : 50.80$"
						break;
					case "500":
						price="Regular Price : 62.20$"
						break;
					case "1000":
						price="Regular Price : 67.50$"
						break;
					case "2500":
						price="Regular Price : 75.14$"
						break;
					case "5000":
						price="Regular Price : 88.80$"
						break;
					}
				break;
				
			case "8.5 X 14":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 37.44$"
					    break;
					case "50":
						price="Regular Price : 48.22$"
						break;
					case "100":
						price="Regular Price : 52.80$"
						break;
					case "500":
						price="Regular Price : 66.20$"
						break;
					case "1000":
						price="Regular Price : 72.50$"
						break;
					case "2500":
						price="Regular Price : 77.14$"
						break;
					case "5000":
						price="Regular Price : 90.80$"
						break;
					}
				break;

			case "8 X 10":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 40.44$"
					    break;
					case "50":
						price="Regular Price : 51.22$"
						break;
					case "100":
						price="Regular Price : 55.80$"
						break;
					case "500":
						price="Regular Price : 63.20$"
						break;
					case "1000":
						price="Regular Price : 71.50$"
						break;
					case "2500":
						price="Regular Price : 76.14$"
						break;
					case "5000":
						price="Regular Price : 89.80$"
						break;
					}
				break;


			}
			}
		else
			{
			switch(document.myform.size.value)
			{
			case "8.5 X 3.5":
				
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 32.54$"
					    break;
					case "50":
						price="Regular Price : 43.22$"
						break;
					case "100":
						price="Regular Price : 48.80$"
						break;
					case "500":
						price="Regular Price : 55.20$"
						break;
					case "1000":
						price="Regular Price : 63.50$"
						break;
					case "2500":
						price="Regular Price : 68.14$"
						break;
					case "5000":
						price="Regular Price : 79.80$"
						break;
					}
				break;
				
			case "8.5 X 5.5":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 35.54$"
					    break;
					case "50":
						price="Regular Price : 45.22$"
						break;
					case "100":
						price="Regular Price : 49.80$"
						break;
					case "500":
						price="Regular Price : 59.20$"
						break;
					case "1000":
						price="Regular Price : 66.50$"
						break;
					case "2500":
						price="Regular Price : 78.14$"
						break;
					case "5000":
						price="Regular Price : 85.80$"
						break;
					}
				break;

			case "8.5 X 11":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 36.44$"
					    break;
					case "50":
						price="Regular Price : 48.22$"
						break;
					case "100":
						price="Regular Price : 56.80$"
						break;
					case "500":
						price="Regular Price : 65.20$"
						break;
					case "1000":
						price="Regular Price : 69.50$"
						break;
					case "2500":
						price="Regular Price : 81.14$"
						break;
					case "5000":
						price="Regular Price : 92.80$"
						break;
					}
				break;
				
			case "8.5 X 14":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 39.44$"
					    break;
					case "50":
						price="Regular Price : 49.22$"
						break;
					case "100":
						price="Regular Price : 57.80$"
						break;
					case "500":
						price="Regular Price : 70.20$"
						break;
					case "1000":
						price="Regular Price : 78.50$"
						break;
					case "2500":
						price="Regular Price : 86.14$"
						break;
					case "5000":
						price="Regular Price : 98.80$"
						break;
					}
				break;

			case "8 X 10":
				switch(document.myform.qty.value)
				{
				case "25":
					price="Regular Price : 41.44$"
					    break;
					case "50":
						price="Regular Price : 55.22$"
						break;
					case "100":
						price="Regular Price : 58.80$"
						break;
					case "500":
						price="Regular Price : 68.20$"
						break;
					case "1000":
						price="Regular Price : 79.50$"
						break;
					case "2500":
						price="Regular Price : 86.14$"
						break;
					case "5000":
						price="Regular Price : 98.80$"
						break;
					}
				break;

			}
			}
	document.getElementById('show').innerText=price;
 }
 
</script>

</body>
</html>