
<!DOCTYPE html>
<html>
<style>
input[type=text], select, input[type=email], input[type=number] {
width: 70%;
Padding: 8px 1px;
border: 0;
border-bottom: 2px dotted #56CB5A;
box-sizing: border-box;
padding: 10px 0;
font: normal 13px Verdana;
}

.name {
width: 70%;
Padding: 5px 20px;
display: inline-block;
box-sizing: border-box;
text-align: center; 
}

.address {
width: 70%;
Padding: 5px 20px;
display: inline-block;
box-sizing: border-box;
text-align: center; 
}

.city {
width: 70%;
Padding: 5px 20px;
display: inline-block;
box-sizing: border-box;
text-align: center; 
}

.province {
width: 70%;
Padding: 5px 20px;
display: inline-block;
box-sizing: border-box;
text-align: center; 
}

.email {
width: 70%;
Padding: 5px 20px;
display: inline-block;
box-sizing: border-box;
text-align: center; 
}

.bsr {
width: inherit;
Padding: 5px 20px;
box-sizing: border-box;
text-align: center;
margin: inherit; 
}

.codetype {
width: 70%;
Padding: 5px 20px;
box-sizing: border-box;
text-align: center;
margin: 0 auto; 
}
 
label {
display:block;
float:left;
width:100%;
font: normal 16px Arial;
padding: 30px 0px;
}

h2 {
font: normal 19px Verdana;
}	

*:focus {
outline: none;
}

input[type=text]:hover, select:hover, input[type=email]:hover, input[type=number]:hover {
border-bottom: 2px solid #56CB5A;
opacity: 0.50;
}

input[type=text]:focus, select:focus, input[type=email]:focus, input[type=number]:focus {
border-bottom: 2px solid #56CB5A;
}

body {
text-align: center;
margin: 0;
margin-top: 30px;
}
	
.order {
	border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
	}	

.nav {
background-color: #5fb962;
overflow: hidden;
position: fixed; 
top: 0; 
width: 100%; 
margin: 0;
}

.nav a {
float: left;
color: #f2f2f2;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font: normal 14px Verdana;
}

.nav a:hover {
background-color: #F2F2F2;
color: black;
cursor: pointer;
}

.nav a:active {
background-color: #FFFFFF;
color: black;
border: 2px solid #56CB5A;
}

.section {
position: fixed;
top: 10%;
bottom: 0;
right: 4%;
width: 300px;

}

.section button {
background-color: #4CAF50;
color: white;
border: none;
padding: 8px 16px;
font: normal 13px Verdana;
}

.section button:hover {
opacity: 0.75;
cursor: pointer;
}

.total {
position: fixed;
top: 10%;
bottom: 0;
left: 4%;
width: 300px;
}

.total button {
background-color: #4CAF50;
color: white;
border: none;
padding: 8px 16px;
font: normal 13px Verdana;
width: 200px;
}

.total button:hover {
opacity: 0.75;
cursor: pointer;
}

.table {
position: fixed;
top: 20%;
bottom: 0;
left: 4%;
width: 300px;
text-align: left;
font: normal 14px Verdana;
}

h2 {
margin-top: 70px;
}

#submit {
	margin-bottom: 10px;
	margin-top: 20px;
	text-align; center;
	}

#submit button {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	width: 65%;
	text-align: center;
	cursor: pointer;
	font: normal 14px Verdana;
}
	
#submit button:hover {
	opacity: 0.6;
	}
</style>
<head>

</head>
<body>


<!-- navigation!-->
<div class="nav">

<a href="http://raml.biz/guy/homemember.aspx">Home</a>
<a href="http://raml.biz/guy/bandorder.aspx">Band Order</a>
<a href="http://raml.biz/guy/membership.aspx">Membership</a>
 
</div>

<div class="order"> 
<h2> Band Order Form </h2>
  <form onsubmit= "return validateForm()" action="paypal.aspx">
 
<label>Name:</label>    
<div class= "name">
     
	<input type="text" name="Name" placeholder="Enter Your Name" required><br>
	
    </div>
    <br>
	
	
<label>Address:</label>    
<div class= "address">
     
	<input type="text" name="Address" placeholder="Enter Your Address" required><br>
	
    </div>
    <br>

<label>City:</label>    
<div class= "city">
     
	<input type="text" name="City" placeholder="Enter Your City" required><br>
	
    </div>
    <br>

<label>Province:</label>    
<div class= "province">
     
	<select id ="Province">
	<option value="AB">Alberta</option>
	<option value="BC">British Columbia</option>
	<option value="MB">Manitoba</option>
	<option value="NB">New Brunswick</option>
	<option value="NL">Newfoundland and Labrador</option>
	<option value="NS">Nova Scotia</option>
	<option value="ON">Ontario</option>
	<option value="PE">Prince Edward Island</option>
	<option value="QC">Quebec</option>
	<option value="SK">Saskatchewan</option>
	<option value="NT">Northwest Territories</option>
	<option value="NU">Nunavut</option>
	<option value="YT">Yukon</option>
	</select>
	
    </div>
    <br>


<label>Email Address:</label>
<div class="email">
     
	<input type="email" name="Email" placeholder="Enter Your Email Address" required><br>
    </div>
    <br>

	<label>Code Type:</label>
<div class = "codetype" >
<select id="codetype" value="code" required >
<option value="nn">~select code type~</option>
<option value="ycoded">coded</option>
<option value="notcoded">not coded</option>
</select>
	
<div id="size" style="visibility:collapse" >
<label>Band Size Required:</label>
<div class="bsr" >
     
	<select ID= "Bandsize" required>
	<option value="">~select a size~</option>
    <option  value="5">A</option>
    <option  value="5">B</option>
    <option  value="5">C</option>
    <option  value="5">D</option>
    <option  value="5">E</option>
    <option  value="5">F</option>
    <option  value="5">G</option>
    <option  value="5">H</option>
    <option  value="5">I</option>
    <option  value="5">J</option>
    <option  value="5">K</option>
    <option  value="8">L</option>
    <option  value="8">M</option>
    <option  value="8">N</option>
    <option  value="8">O</option>
    <option  value="8">P</option>
    <option  value="8">Q</option>
    <option  value="8">R</option>
    <option  value="8">S</option>
    <option  value="3">T</option>
    <option  value="3">U</option>
    <option  value="3">V</option>
    <option  value="3">U</option>
    <option  value="3">X</option>
    <option  value="3">Y</option>
  </select>
  </div>
    </div>
  <br>

	<div id = "quan" style="visibility:collapse">
		<label>Quantity</label>
		<input type="number" id ="quantity" placeholder = "Quantity"><br>
	</div>
       
	<div id="codedprice" value="pricelist" style="visibility:collapse">
		<label>Custom Code</label>
		<input type ="text" ID = "codechoose" placeholder = "Enter custom code here "><br>
  </div>

  </form>

  <div class = "section">
  <button type="button" onclick="toggle()">Continue To The Next Section</button>
  </div>

<div class = "total">
<button type="button" onclick="calc()">Calculate Total</button>
</div>

<div class = "table">
<table>
<tr>
<th>Quantity:</th>
<th id = "q" ></th>
</tr>


<tr>
<th>Band Price:</th>
<th id = "bp"></th>
</tr>

<tr>
<th>Code Charge:</th>
<th id = "charge"></th>
</tr>

<tr>
<th>Total:</th>
<th id = "to"></th>
</tr>

</table>
</div>


  <!---hides input fields!-->
  <script>
function toggle() {

	var i = document.getElementById("size");
	var x = document.getElementById("codetype").value;
	var z = document.getElementById("codedprice");
	var a = document.getElementById("quan");

	if ( x=="nn") {
		window.alert("Please Fill Out Necessary Fields")
		a.style.visibility = "collapse"
		z.style.visibility = "collapse"
		i.style.visibility = "collapse"
		}
		
	else if (x == "ycoded")  {
		z.style.visibility = "visible";
		a.style.visibility = "visible"; 
		i.style.visibility   = "visible";
	}
	
	else if (x == "notcoded")  { 
		a.style.visibility = "visible";
		i.style.visibility   = "visible";
		z.style.visibility = "collapse"
	}
	 
}

</script>

<script>
function calc() {
var quantity = document.getElementById("quantity").value;
var price = Number(document.getElementById("Bandsize").value);
var total = price * quantity;
var code = document.getElementById("codetype").value;
var strPrice = document.getElementById("Bandsize").value;


if ("total > 50") {
	total = total + 5
	}
else if ("total < 50") {
	total = total + 10
	}

if (code == "ycoded") { 
total = total + 5
document.getElementById("q").innerHTML = (quantity);
document.getElementById("bp").innerHTML = ("$" + price);
document.getElementById("charge").innerHTML = "$5";
document.getElementById("to").innerHTML = ("$" + total);

}



if (code == "notcoded") {
document.getElementById("q").innerHTML = (quantity);
document.getElementById("bp").innerHTML = ("$" + price);
document.getElementById("charge").innerHTML = "$0";
document.getElementById("to").innerHTML = ("$" + total);

}





}

</script>

<script>





</script>

<div id = "submit">
<button type="submit">Submit</button>
</div>     
  
</body>
</html>