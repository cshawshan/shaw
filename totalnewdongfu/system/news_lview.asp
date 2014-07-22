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
					items : []
				});
			});
		</script>
		
	</head>
<body>
<div id="body-wrapper">
<div id="main-content">	
<%
          set rs=server.createobject("adodb.recordset") 
          sql = "select * from "&request("category")&" where id="&request("id")&""
          rs.open sql,conn,1,1
%>


      <form id="form" name="form" method="post" action="news_del.asp?category=<%=request("category")%>&id=<%=rs("id")%>">
        <table align="center" width="630" height="446" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td colspan="2" align="center"><strong>浏 览 新 闻</strong></td>
          </tr>
          <tr>
            <td width="90" height="15" align="right" bgcolor="#FFFFFF">标题：</td>
            <td width="590"><label>
              <%=rs("news_title")%>
              </label></td>
          </tr>
          <tr>
            <td height="15" align="right">栏目：</td>
<% if request("category")="latestnews" then %>
              <td>最新动态</td>
<% elseif request("category")="notice" then %>
              <td>相关公告</td>
<% elseif request("category")="multinews" then %>
              <td>团队风采</td>
<% end if %>
          </tr>
          <tr>
            <td></td>
            <td>
<!--<%
htmlData = rs("news_content")
Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
<%=htmlspecialchars(htmlData)%>-->
<%=rs("news_content")%>
          </td>
          </tr>
          <tr>
            <td height="22" align="right">录入员：</td>
            <td><%=rs("news_sender")%></td>
          </tr>
          <tr>
            <td height="22" align="right">&nbsp;</td>
            <td width="338"><a onClick="history.back();"><input type="button" value="返回" /></a>
                  <a onClick="window.location.href='news_edit.asp?category=<%=request("category")%>&id=<%=rs("id")%>'"><input type="button" value="编辑" /></a>
                  <a onClick="return confirm('删除后无法恢复,确定要删除吗')"><input type="submit" value="删除" /></a>
            </td>
          </tr>
        </table>
       </form>
</div>
</div>
</body>