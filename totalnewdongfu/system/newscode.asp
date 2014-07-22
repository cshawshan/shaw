<!--#include file="Inc/check_session.asp"-->
<!--#include file="Inc/conn.asp"-->


<%
   if request("title")="" then
   response.write "<script>alert('标题不能为空！');history.back();</script>"
   response.end
   end if
%>

<%
   set rss=server.createobject("adodb.recordset")
   sqls = "select * from "&request("category")&""
   rss.open sqls,conn,1,3
   rss.addnew

   rss("News_title") = request("title")
   rss("News_content") = request("content")
   rss("News_sender") = session("adminname")
   rss.update
   response.write "<SCRIPT LANGUAGE=JavaScript>alert (' 添加成功！');window.location.href='news.asp';</script>"
   rss.close
   set rss = nothing
%>