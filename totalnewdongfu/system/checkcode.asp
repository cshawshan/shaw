<!--#include file="inc/conn.asp" -->
<%
if request.Form("id")<>"" then
	set up=server.CreateObject("ADODB.recordset")
	dim id
	id=cint(request.Form("id"))
	sql="select * from Activity where ID="&id
	up.open sql,conn,1,3
	if request.Form("val")=1 then
	up("Act_check")=1
	elseif request.Form("val")=4 then
	up("Act_check")=4
	elseif request.Form("val")=5 then
	up("Act_check")=5
	else
	up("Act_check")=2
	end if
	up.update
	up.close
	response.Redirect("activity_check.asp")
end if
%>