<%Response.Charset = "gb2312"%>
<!--#include file="Inc/conn.asp"-->
<%set rs=server.CreateObject("ADODB.recordset")%>
<%
if not isempty(request("submit")) then
dim user,passwd,nam,pro,num,cla,sql
user=request.Form("user")
		pos=InStr(user,"'")
		if pos > 0 then
			response.Write "<script>alert('�ύ�Ƿ��ַ�');window.history.back()</script>"
		end if	
passwd=request.Form("passwd")
nam=request.Form("name")
pro=request.Form("pro")
num=request.Form("num")
cla=request.Form("class")
tel=request.Form("tel")
passwd2=request.Form("passwd2")
vcode=request.Form("vcode")
'verification=request.Form(Session("verification"))
%>
<%
if user="" or passwd="" or passwd2="" or nam="" or pro="" or num="" or cla="" or tel="" then
	Response.write "<script language='javascript'>alert('��Ϣ��ȫ��');history.go(-1);</script>" 
	Response.end
end if

dim textGrade,textLength
textGrade = left(num,4)
textLength = len(num)
	if textGrade<>"2012" and text<>"2013" then
		response.Write "<script language='javascript'>alert('�꼶����');history.go(-1);</script>"
		Response.end
	end if

	if textLength<>12 then
		response.Write "<script language='javascript'>alert('ѧ�ų��Ȳ�����Ҫ��');history.go(-1);</script>"
		Response.end
	end if
	
	
if passwd<>passwd2 then
	Response.write "<script language='javascript'>alert('���벻һ�£�');history.go(-1);</script>"
	Response.end
end if

if session("verification")<>vcode then
	Response.write "<script language='javascript'>alert('��֤����������');history.go(-1);</script>"
	Response.end
end if

		sql="select * from admin where adminname='"&user&"' or StudentID='"&num&"'"
		rs.open sql,conn		
		if rs.eof then
			sql="insert into admin (adminname,adminpwd,truename,StudentID,Pro,academy,T_Time,adminphone) values('"&user&"','"&passwd&"','"&nam&"','"&num&"','"&pro&"','"&cla&"','"&date()&"','"&tel&"')"
			conn.Execute sql
				Response.write "<script language=""javascript"">alert(""ע��ɹ������¼��"");window.location=(""index.asp"")</script>"
		elseif rs("adminname")=user then
			Response.write "<script language='javascript'>alert('���û����Ѵ��ڣ�');history.go(-1);</script>" 
		else
			Response.write "<script language='javascript'>alert('��ѧ���Ѵ��ڣ�');history.go(-1);</script>" 
		end if
%>
<%end if%>
<%rs.close%>
<%conn.close%>