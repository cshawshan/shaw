<%
	if session("adminname")="" then 
	response.Write("<script language='javascript'>alert('ҳ���ѹ��ڣ������µ�¼');top.location.href='login.asp';</script>")
	end if
%>