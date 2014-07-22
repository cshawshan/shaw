<%
	if session("adminname")="" then 
	response.Write("<script language='javascript'>alert('页面已过期，请重新登录');top.location.href='login.asp';</script>")
	end if
%>