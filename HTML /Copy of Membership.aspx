<!DOCTYPE html>

<style>

.nav {
background-color: #5fb962;
overflow: hidden;
position: fixed; 
top: 0; 
width: 100%; 
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

}

.nav a:active {
background-color: #FFFFFF;
color: black;
border: 2px solid #56CB5A;
}



body {
margin-top: 30px;
}

.status {
padding-top: 10px;
}


</style>



<html>
<head>

<div class="nav">

<a href="homemember.aspx">Home</a>
<a href="bandorder.aspx">Band Order</a>
<a href="membership.aspx">Membership</a>
 
</div>


</head>

<body>



<div class = "status">
<h2> Membership Status:</h2>
</div>


<%
dim status As String = Request.QueryString("member")

if status = "yes" then
Response.Write ("member")

elseif status = "no" then
Response.Write ("not a member") 
end if 


%>

</body>
</html>