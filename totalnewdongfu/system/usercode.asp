<!--管理其他用户-->
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
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('修改成功！');history.back();</script>"
	end if
%>


<!--删除用户-->
<%
	if request.QueryString("id")<>"" then
		set res = Server.CreateObject("ADODB.recordset")
        res.Open "SELECT * FROM admin where ID="&request.QueryString("id")&"", conn,1,3
		if cint(res("adminpower"))=1 then
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('您不能删除超管的信息');window.location.href='otheruser.asp';</script>"
		end if
		if cint(res("adminpower"))>1 then
		res.delete
		res.close
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('删除成功！');window.location.href='otheruser.asp';</script>"
		end if
	end if
%>


<!--添加用户-->
<%
	if request.Form("add")<>"" then
		if request.Form("user")="" or request.Form("passwd")="" or request.Form("pro")="" or request.Form("name")="" or request.Form("num")="" or request.Form("tel")="" then
			response.write "<SCRIPT LANGUAGE=JavaScript>alert ('信息不全！');window.location.href='adduser.asp';</script>"
			response.end
		end if
		if request.Form("passwd")<>request("passwd2") then
			response.write "<SCRIPT LANGUAGE=JavaScript>alert ('确认密码错误！');window.location.href='adduser.asp';</script>"
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
		response.write "<SCRIPT LANGUAGE=JavaScript>alert ('添加成功！ ');window.location.href='adduser.asp';</script>"
	end if	
%>



<!--修改个人信息-->
<%
	if request.Form("inf")<>"" then
		set cinf=server.createobject("adodb.recordset")
			sql = "select * from admin where adminname='"&session("adminname")&"'"
			cinf.open sql,conn,1,3
			if request("password")="" then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 请输入当前密码！');history.back();</script>"
				response.end
			end if
			if request("password")<>cinf("adminpwd") then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 当前密码错误！');history.back();</script>"
				response.end
			end if
			if request("newpassword")<>request("newpassword2") then
				response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 两次输入的新密码不同！');history.back();</script>"
				response.end
			end if
			if request("newpassword")<>"" then
				cinf("adminpwd") = request("newpassword")
			end if
				cinf("pro") = request("academy")
				cinf("adminphone") = request("phone")
				cinf.update
				response.write "<SCRIPT LANGUAGE=JavaScript>alert ('修改成功！');window.location.href='information.asp';</script>"
			cinf.close
			set cinf = nothing
	end if
%>