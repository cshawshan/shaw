<!--#include file="inc/conn.asp" -->
<%
if request.Form("id")<>"" then
	set up=server.CreateObject("ADODB.recordset")
	dim id
	id=cint(request.Form("id"))
	sql="select * from Activity where ID="&id
	up.open sql,conn,1,3
	if request.Form("val")=5 then
	up("Act_check")=5
	elseif request.Form("val")=2 then
	up("Act_check")=2
	end if
	up.update
	up.close
	response.Redirect("activity_check2.asp")
end if
%>