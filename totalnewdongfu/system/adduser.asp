<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Inc/conn.asp"-->
<!--#include file="Inc/check_session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����û�</title>
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
<%if cint(session("adminpower"))<2 then%>
	<div id="body-wrapper">
	<div id="main-content">	
		<br /><br /><br />
		<div>
			<h2>User Management</h2>
			<span>����û������¾�Ϊ�����</span>
		</div>
		<br /><br /><br />
		<form action="usercode.asp" method="post" >
		<input type="hidden" name="add" value="1" />
		<table>
			<tr align="center">
				<td>�û���</td>
				<td>����</td>
				<td>ȷ������</td>
				<td>רҵ</td>
				<td>�û�����</td>
			</tr>
			<tr>
				<td><input name="user" type="text" /></td>
				<td ><input name="passwd" type="password" /></td>
				<td ><input name="passwd2" type="password" /></td>
				<td><input type="text" name="pro" /></td>
				<td >
					<select name="power">
						<option value="3">�չ�</option>
						<option value="2">�û�</option>
						<option value="1">����</option>
					</select>
				</td>
			</tr>
	
			<tr>
				<td>��ʵ����</td>
				<td>ѧ�ţ�����ޡ���</td>
				<td>��ϵ�绰</td>
				<td>ѧԺ/��֯</td>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
			</tr>
			
			
			<tr>
				<td ><label>
				<input name="name" type="text" />
				</label></td>
				<td ><label>
				<input name="num" type="text" />
				</label></td>
				<td ><label>
				<input name="tel" type="text"/>
				</label></td>
				<td align="center">
				<select name="academy">
				<!--#include file="academy.asp"-->
				</select>
				</td>
				<td ><input type="submit" name="Submit" value="���" /></td>
			</tr>
		</table>
		</form>
		<!--#include file="../Public/foot.asp"-->
	</div>
	</div>
<%end if%>
</body>
</html>
