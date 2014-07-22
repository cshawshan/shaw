<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Inc/check_session.asp"-->
<!--#include file="usercode.asp"-->
<!--#include file="Inc/conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>其他用户</title>

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
<%if cint(session("adminpower"))<2 then%>
	<div id="body-wrapper">
	<div id="main-content">	
	<br /><br /><br />
	<div>
		<h2>User Management</h2>
		<span>其他用户</span>
	</div>
	
	<br /><br /><br />
	
	<%set rs=server.createobject("adodb.recordset")%>
	<%sql = "select * from admin where adminname<>'"&session("adminname")&"'"%>
	<%rs.open sql,conn,1,3%>
	<table>
		<tr align="center">
		<td>用户名</td>
		<td>真实姓名</td>
		<td>学号</td>
		<td>学院/组织</td>
		<td>联系电话</td>
		<td>用户级别</td>
		<td width="64" >操作</td>
		</tr>
		<% if not rs.eof then  %>
		<!--#include file="../Public/divide_page.asp"-->
		<tr align="center">
		<td><%=rs("adminname")%></td>
		<td><%=rs("truename")%></td>
		<td><%=rs("StudentID")%></td>
		<td><%=rs("academy")%></td>
		<td><%=rs("adminphone")%></td>
		<td>
			<form action="usercode.asp" method="post">
				<input type="hidden" name="other" value="<%=rs("ID")%>" />
				<select name="power">
					<%if rs("adminpower")=2 then%>
					<option value="2">用户</option>
					<option value="3">普管</option>
					<option value="1">超管</option>
					<%elseif rs("adminpower")=3 then%>
					<option value="3">普管</option>
					<option value="2">用户</option>
					<option value="1">超管</option>
					<%else%>
					<option value="1">超管</option>
					<option value="2">用户</option>
					<option value="3">普管</option>
					<%end if%> 
				</select>
				<input type="submit" name="Submit" value="修改" />
			</form>
		</td>
		<td width="32" ><a href="usercode.asp?id=<%=rs("ID")%>">删除</a></td>
		</tr>
		<tr><td colspan="7"><!--#include file="../Public/divide_pagediv.asp"--></td></tr>
		<%end if%>
	</table>
	<!--#include file="../Public/foot.asp"-->
	</div>
	</div>
<%end if%>
</body>
</html>
		
