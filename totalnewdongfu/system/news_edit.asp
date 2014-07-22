<!--#include file="inc/conn.asp" -->
<!--#include file="Inc/check_session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
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
        <script type="text/javascript" charset="utf-8" src="scripts/kindeditor-min.js"></script>
		<script type="text/javascript" charset="utf-8" src="scripts/zh_CN.js"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					uploadJson : 'inc/upload_json.asp',
					fileManagerJson : 'inc/file_manager_json.asp',
					resizeType : 0,
					allowPreviewEmoticons : false,
					allowImageUpload : true,
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'image', 'link']
				});
			});
		</script>
		
	</head>
<%
   action = request("action")

   if action = "ok" then
   if request("title")="" then
   response.write "<script>alert('标题不能为空！');history.back();</script>"
   response.end
   end if

   set rss=server.createobject("adodb.recordset")
   sqls = "select * from "&request("category")&" where id="&request("id")&""
   rss.open sqls,conn,1,3

   rss("news_title") = request("title")
   rss("news_content") = request("content")
   rss.update
   response.write "<SCRIPT>alert (' 修改成功！');window.location.href='news_edit.asp?category="&request("category")&"&id="&request("id")&"';</script>"
   rss.close
   set rss = nothing
   end if
%>
<body>
<%
          set rs=server.createobject("adodb.recordset") 
          sql = "select * from "&request("category")&" where id="&request("id")&""
          rs.open sql,conn,1,1
%>

<div id="contain">
	<div id="body-wrapper">
	<div id="main-content">	
	<div><h2>Message Adding</h2>
	<span></span>
	</div>
	<br /><br /><br />
	<div>
	<form name="example" method="post" action="news_edit.asp?action=ok&category=<%=request("category")%>&id=<%=rs("id")%>">
		<span>标题：</span>
		<input type="text" name="title" value="<%=rs("news_title")%>" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>栏目：</span>
<% if request("category")="latestnews" then %>
              <td>最新动态</td>
<% elseif request("category")="notice" then %>
              <td>相关公告</td>
<% elseif request("category")="multinews" then %>
              <td>团队风采</td>
<% end if %>
		<br /><br />
<%
htmlData = rs("news_content")
Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
         <textarea name="content" style="width:630px;height:400px;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
		<br />
		<input type="submit" name="submit" value="提交内容" /> （编辑框可以增大）
	</form>
	</div>
	</div>
	</div>
</body>