<!--���������û�-->
<!--#include file="Inc/conn.asp"-->
<%
	if request.Form("other")<>"" then
		set up=server.CreateObject("ADODB.recordset")
		dim id
		id=cint(request.Form("other"))
		sql="select * from admin where ID="&id
		up.open sql,conn,1,3
		up("adminpower")=request.Form("power")
		up.update
		up.close
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('�޸ĳɹ���');history.back();</script>"
	end if
%>


<!--ɾ���û�-->
<%
	if request.QueryString("id")<>"" then
		set res = Server.CreateObject("ADODB.recordset")
        res.Open "SELECT * FROM admin where ID="&request.QueryString("id")&"", conn,1,3
		if cint(res("adminpower"))=1 then
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('������ɾ�����ܵ���Ϣ');window.location.href='otheruser.asp';</script>"
		end if
		if cint(res("adminpower"))>1 then
		res.delete
		res.close
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('ɾ���ɹ���');window.location.href='otheruser.asp';</script>"
		end if
	end if
%>


<!--����û�-->
<%
	if request.Form("add")<>"" then
		if request.Form("user")="" or request.Form("passwd")="" or request.Form("pro")="" or request.Form("name")="" or request.Form("num")="" or request.Form("tel")="" then
			response.write "<SCRIPT LANGUAGE=JavaScript>alert ('��Ϣ��ȫ��');window.location.href='adduser.asp';</script>"
			response.end
		end if
		if request.Form("passwd")<>request("passwd2") then
			response.write "<SCRIPT LANGUAGE=JavaScript>alert ('ȷ���������');window.location.href='adduser.asp';</script>"
			response.end
		end if
		set add=server.createobject("adodb.recordset")
		sql = "select * from admin"
		add.open sql,conn,1,3
		add.addnew
		add("adminname") = request("user")
		add("adminpwd") = request("passwd")
		add("adminpower")=request("power")
		add("truename") = request("name")
		add("StudentID") = request("num")
		add("academy") = request("academy")
		add("T_Time") = now()
		add("Pro") = request("pro")
		add("adminphone") = request("tel")
		add.update
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('��ӳɹ��� ');window.location.href='adduser.asp';</script>"
	end if	
%>



<!--�޸ĸ�����Ϣ-->
<%
	if request.Form("inf")<>"" then
		set cinf=server.createobject("adodb.recordset")
			sql = "select * from admin where adminname='"&session("adminname")&"'"
			cinf.open sql,conn,1,3
			if request("password")="" then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' �����뵱ǰ���룡');history.back();</script>"
				response.end
			end if
			if request("password")<>cinf("adminpwd") then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' ��ǰ�������');history.back();</script>"
				response.end
			end if
			if request("newpassword")<>request("newpassword2") then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' ��������������벻ͬ��');history.back();</script>"
				response.end
			end if
			if request("newpassword")<>"" then
				cinf("adminpwd") = request("newpassword")
			end if
				cinf("pro") = request("academy")
				cinf("adminphone") = request("phone")
				cinf.update
				response.write "<SCRIPT LANGUAGE=JavaScript>alert ('�޸ĳɹ���');window.location.href='information.asp';</script>"
			cinf.close
			set cinf = nothing
	end if
%>