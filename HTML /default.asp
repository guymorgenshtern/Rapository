<!DOCTYPE html>
<html>
<style>
	
input[type=text], input[type=password] {
width: 70%;
Padding: 16px 20px;
display: inline-block;
border: 0;
border-bottom: 2px dotted #56CB5A;
box-sizing: border-box;
text-align: center; 	
}	

.Login button {
background-color: #4CAF50;
color: white;
padding: 16px 20px;
margin: 8px 19px;
border: none;
width: 65%;
text-align: center;
}

.Login button:hover {
background-color: #56CB5A;
opacity: 0.75;
text-align: center;
}

label {
font: normal 14px Arial !important;
padding: 8px 19px;
}


h2 {
font: normal 16px Arial !important;
width: 20%;
Padding: 8px 20px;
margin: 8px 19px;
display: inline-block;
box-sizing: border-box;

}

.imgcontainer {
    text-align: center;
    margin: 24px 0 20px 0;
}

img.avatar {
    width: 50%;
    border: 50%;
}

.Login {
text-align: center;
}

.cancel {
text-align: center;
}

.cancel button {
background-color: #ff4d4d;
color: white;
padding: 16px 20px;
margin: 8px 19px;
border: none;
width: 70%;
text-align: center;
}

.cancel button:hover {
background-color: ff6a6a;
opacity: 0.75;
text-align: center;
}

body {
padding: 20px 19px;
margin: auto;
width: 90%;
background-color: #5fb962;
}

input[type=text]:hover, input[type=password]:hover {
border-bottom: 2px solid #56CB5A;
opacity: 0.50;
}

input[type=text]:focus, input[type=password]:focus {
border-bottom: 2px solid #56CB5A;
}

*:focus {
outline: none;
}

p {
text-align: center;
font: normal 12px Verdana;
color: #009900;
padding-top: 5px;
}

.border {
margin-top: 30px;
background-color: #ffffff;
padding: 70px 12px;
box-shadow: 0 0 30px 0 rgba(0, 0, 0, 0.2), 0 10px 10px 0 rgba(0, 0, 0, 0.24);
}
	

</style>	
<head>
</head>

<body>

<h2> Login Form </h2>

<%

dim objDict

objDict = CreateObject("Scripting.Dictionary")

' Set up passwords and user ids

objDict("guy") = "student@123"
objDict("guest") = "password"

If Request("name") <> "" then
	strUserID = Request("name")
	strPassword = Request("pass")

	if objDict(strUserID) = strPassword then
		Response.Write "Success"
	else
		Response.Write "Failed"
	end if
end if

%>

<div class="border" style="height: 65%; width:50%; margin: 0px auto;">
<form action="">

 <div class="imgcontainer">
    <img src="http://www.parrotclubofman.ca/Aviculture%20Advancement%20Council%20of%20Canada%20Logo.gif" alt="Avatar" class="avatar">
  </div>

  
	<div class="Login">
		<label>Username</label>
		<br>
		<input type ="text" placeholder="Enter Username" name="name" required>
		
		<br>
		<br>
		<label>Password</label>
		<br>
		<input type="password" placeholder="Enter your password" name="pass" required>
		
		<br>
		<br>
		<button type="submit">Login</button>
	
	</div>
	
	<p> Not registered? <a href="file:///C:/Users/CNS/Desktop/actionpage.html"> create an account</a></p>
	 </div>

	
</body>