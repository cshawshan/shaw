<!--#include file="Inc/conn.asp"-->
<!--#include file="Inc/check_session.asp"-->

<% 
IF request("id")<>"" Then
   Sql = "Delete From "&request("category")&" Where id="&request("id")&""
   Conn.Execute(Sql)
if Session("adminpower")=1 then
   response.write "<SCRIPT LANGUAGE=JavaScript>alert (' É¾³ý³É¹¦£¡');window.location.href='news_view.asp';</script>"
end if
if Session("adminpower")=2 then
   response.write "<SCRIPT LANGUAGE=JavaScript>alert (' É¾³ý³É¹¦£¡');window.location.href='news_view2.asp';</script>"
end if
if Session("adminpower")=3 then
   response.write "<SCRIPT LANGUAGE=JavaScript>alert (' É¾³ý³É¹¦£¡');window.location.href='news_view1.asp';</script>"
end if
else
  response.write "<SCRIPT LANGUAGE=JavaScript>alert (' ·¢Éú´íÎó£¬É¾³ýÊ§°Ü£¡');history.back;</script>"
End IF

%>