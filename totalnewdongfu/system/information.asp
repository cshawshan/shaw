<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Inc/check_session.asp"-->
<!--#include file="usercode.asp"-->
<!--#include file="Inc/conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>个人信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>Simpla Admin</title>
		<!------------------------CSS--------------------------->
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!----------------------Javascripts------------------------->
  
		<!-- jQuery -->
		<script type="text/javascript" src="scripts/jquery-1.3.2.min.js"></script>
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="scripts/simpla.jquery.configuration.js"></script>
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="scripts/facebox.js"></script>
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="scripts/jquery.wysiwyg.js"></script>
		<!-- jQuery Datepicker Plugin -->
		<script type="text/javascript" src="scripts/jquery.datePicker.js"></script>
		<script type="text/javascript" src="scripts/jquery.date.js"></script>
		<!--[if IE]><script type="text/javascript" src="scripts/jquery.bgiframe.js"></script><![endif]-->

		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
		<style>
		#contain{margin-left:30px;margin-top:40px;}
		span{font-size:17px;}
		h2{font-family: Helvetica, Arial, sans-serif;color: #222;font-weight: bold;}
	</style>

</head>

<body>
	<div id="body-wrapper">
	<div id="main-content">
	<br /><br /><br />
		<div>
			<h2>User Management</h2>
			<span>个人信息</span>
		</div>
		<br /><br /><br />	
	<form action="usercode.asp" method="post" >
	<input type="hidden" value="1" name="inf"/>
	<table>
		<%set rs=server.createobject("adodb.recordset")%>
		<%sql = "select * from admin where adminname='"&session("adminname")&"'"%>
		<%rs.open sql,conn,1,3%>

		<tr align="center">
			<td>用户名</td>
			<td>学号</td>
			<td>社团/校级组织</td>
			
			<td>当前密码（必填）</td>
			<td>新密码</td>
			<td>确认新密码</td>
			<td>联系电话</td>
			<td>操&nbsp;&nbsp;作</td>
		</tr>
		<tr align="center">
			<td><%=rs("adminname")%></td>
			<td><%=rs("StudentID")%></td>
			<td><%=rs("academy")%></td>
			<!--<td>
				<select name="academy">
					<option value="社团">社团</option>
					<option value="校级组织">校级组织</optioin>
				</select>
			
			</td>-->
			<td><input name="password" type="password" id="password" size="10" /></td>
			<td><input name="newpassword" type="password" id="newpassword" size="10" /></td>
			<td><input name="newpassword2" type="password" id="newpassword2" size="10" /></td>
			<td><input name="phone" type="text" id="phone" value="<%=rs("adminphone")%>" size="12" /></td>
			<td><input type="submit" name="Submit" value="修改" /></td>
		</tr>
	</table>
	</form>
	<!--#include file="../Public/foot.asp"-->
	</div>
	</div>

</body>
</html>
