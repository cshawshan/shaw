<!--#include file="inc/conn.asp" -->

<%
	<!--#include file="code_5.asp"-->
  action=request("action")
  if action = "pass" then

		userName = request("adminname")
		pos=InStr(userName,"'")
		if pos > 0 then
			response.Write "<script>alert('提交非法字符');window.history.back()</script>"
		end if	

  set rs = server.createobject("adodb.recordset")
  sql="select * from admin where adminname='"&request("adminname")&"'"
  rs.open sql,conn,1,1

  if rs.eof then
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 用户名不存在！');window.location.href='login.asp';</script>"
  response.end

  elseif request("adminpwd")<>rs("adminpwd") then
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 密码错误！');window.location.href='login.asp';</script>"
  response.end

    elseif request("admincode")<>Session("firstecode") then
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 验证码错误！');window.location.href='login.asp';</script>"
  response.end

  
  elseif rs("adminpower")="" then
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 抱歉，您尚未具备登陆权限！');window.location.href='login.asp';</script>"
  response.end

  else
  session("adminname")=rs("adminname")
  session("Pro")=rs("Pro")
  session("academy_check")=""
  session("academy")=rs("academy")
  session("adminpwd")=rs("adminpwd")
  session("adminpower")=rs("adminpower")
  rs.close
  set rs = nothing
  conn.close
  set conn = nothing
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 登陆成功！');window.location.href='index.asp';</script>"
  end if
  end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		
		<title>东富名龟园网站后台系统</title>
		
		<!--                       CSS                       -->

		<link rel="stylesheet" href="css/login.css" type="text/css" media="screen" />
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
		
		<!-- Colour Schemes
	  
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		
		<link rel="stylesheet" href="resources/css/blue.css" type="text/css" media="screen" />
		
		<link rel="stylesheet" href="resources/css/red.css" type="text/css" media="screen" />  
	 
		-->
		
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!--                       Javascripts                       -->
	  
		<!-- jQuery -->
		<script type="text/javascript" src="scripts/jquery-1.3.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="scripts/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="scripts/facebox.js"></script>
		
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="scripts/jquery.wysiwyg.js"></script>
		
		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="resources/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
		
	</head>
  
	<body id="login">
		
		<div id="login-wrapper" class="png_bg">
			<div id="login-top">
			
				<h1 style="color:white;">Simpla Admin</h1>
				<!-- Logo (221px width) -->
				Login
			</div> <!-- End #logn-top -->
			
			<div id="login-content">
				
				<form method="post" action="login.asp?action=pass" name="login">
				
					<!--<div class="notification information png_bg">
						<div>
							Just click "Sign In". No password needed.
						</div>
					</div>-->
					
					<p>
						<label>登陆账号</label>
						<input class="text-input" name="adminname" type="text"  />
					</p>
					<div class="clear"></div>
					<p>
						<label>登陆密码</label>
						<input class="text-input" name="adminpwd" type="password" />
					</p>
					
					
					<div class="clear"></div>
					<p>
						<label>验证码</label>
						<input class="yanzhengma" name="admincode" type="text"   style="width:100px;float:left;"/>
						<div id="yanzhengma1"><img src="code_5.asp"></div>
					</p>
					<!--<p id="remember-password">
						<input type="checkbox" />Remember me
					</p>-->
					
					<div class="clear"></div>
					<div style="margin-left:80px; margin-top:10px;">
						<label><input class="button" type="submit" value="登陆" /></label>

						<label><a onClick="window.location.href='register.asp'"><input class="button" type="button" value="注册" /></a></label>