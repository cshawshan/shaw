<%
if session("adminname") = "" or session("adminpwd") = "" then 
response.Write("<script>javascript:window.location.href='login.asp';</script>")
end if
%>