<!--#include file="Inc/check_session.asp"-->
<!--#include file="Inc/conn.asp"-->
<!doctype html>
<html>
<head>
	<meta charset="gb2312" />
	<title>查看资讯</title>
	
	<!------------------------CSS--------------------------->
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="../../../system/css/reset.css" type="text/css" media="screen" />
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="../../../system/css/style.css" type="text/css" media="screen" />
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="../../../system/css/invalid.css" type="text/css" media="screen" />	
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="../../../system/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!----------------------Javascripts------------------------->
  
		<!-- jQuery -->
		<script type="text/javascript" src="../../../system/scripts/jquery-1.3.2.min.js"></script>
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="../../../systems/cripts/simpla.jquery.configuration.js"></script>
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="../../../systems/cripts/facebox.js"></script>
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="../../../systems/cripts/jquery.wysiwyg.js"></script>
		<!-- jQuery Datepicker Plugin -->
		<script type="text/javascript" src="../../../systems/cripts/jquery.datePicker.js"></script>
		<script type="text/javascript" src="../../../systems/cripts/jquery.date.js"></script>
		<!--[if IE]><script type="text/javascript" src="scripts/jquery.bgiframe.js"></script><![endif]-->

		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="../../../system/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
	<style>
		#contain{margin-left:30px;margin-top:40px;}
		span{font-size:17px;}
		h2{font-family: Helvetica, Arial, sans-serif;color: #222;font-weight: bold;}
		#blank{height:10px;}
		table{width:1000px;}
		table tr{height:20px;}
	</style>
</head>
<body>

<div id="contain">
	<div>
		<h2>Message Viewing</h2>
		<span></span>
	</div>
	<br /><br /><br />
	<div>


	</div>
	
	<div>
		<div id="blank"></div>
<%
user=session("adminname")
%>

   <%
   set rs=server.CreateObject("ADODB.recordset")
   sql="select * from multinews where news_sender='"&user&"' order by id desc"%>

              <table>
<tr>
	<td>栏目</td>
	<td>标题</td>
	<td>发表时间</td>
	<td>录入员</td>
	<td></td>
	<td>操作</td>
	<td></td>
</tr>
   <%rs.open sql,conn %>
   <%if rs.eof or rs.bof then %>
   <% else %>
   <%do while not rs.eof %>

              <tr>
              <td>团队风采</td>
              <td><%=rs("news_title")%></td>
              <td><%=rs("news_time")%></td>
              <td><%=rs("news_sender")%></td>
	      <td><a href="news_lview.asp?category=multinews&id=<%=rs("id")%>">详细</a></td>
              <td><a href="news_edit.asp?category=multinews&id=<%=rs("id")%>">编辑</a></td>
              <td><a href="news_del.asp?category=multinews&id=<%=rs("id")%>" onClick="return confirm('删除后无法恢复,确定要删除吗')">删除</a></td>
              </tr>
   <% rs.movenext %>
   <% loop %>
		
		<tr><td colspan="6"></td></tr>
              </table>
<% end if %>
	<!--#include file="../Public/foot.asp"-->

	</div>
</div>
</body>
</html>