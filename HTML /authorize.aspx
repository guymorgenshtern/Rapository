<!DOCTYPE html>

<html>
<body>
<p>authorizing...</p>
</html>

<%
dim member As String = Request.QueryString("name")

if member = "guy" then
Response.Write ("member")
Response.Redirect ("homemember.aspx?member=yes")

elseif member = "guest" then
Response.Write ("not a member") 
Response.Redirect ("Membership.aspx?member=no")
end if 


%>