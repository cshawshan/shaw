<!--#include file="Inc/conn.asp"-->
<!--#include file="Inc/logincheck.asp"-->

<head>
  <style type="text/css">
   .xlsText{mso-style-parent:style0;mso-number-format:"\@";} 
  </style>
</head>

<table>
			<tr>
				<td>学院/组织</td>
				<td>实践地点</td>
				<td>领队姓名</td>
				<td>领队联系方式</td>
				<td>指导老师姓名</td>
				<td>团队人数</td>
				<td>经费预算</td>
				<td>活动简介</td>
				<td>实践方法</td>
				<td>实践类别</td>
				<td>活动时间</td>
				<td>提交时间</td>
				<td>审核情况</td>
			</tr>
<%
  set rs=server.CreateObject("ADODB.recordset")
  if request("activity_check")="3" then
  sql="select * from Activity where Act_academy like '%"&request("academy")&"%' order by id desc"
  else
  sql="select * from Activity where Act_academy like '%"&request("academy")&"%' and Act_check like '%"&request("activity_check")&"%' order by id desc"
  end if
  rs.open sql,conn,1,3
  do while not rs.eof
%>

              <tr>
              <td class="xlsText"><%=rs("Act_academy")%></td>
              <td class="xlsText"><%=rs("Act_add")%></td>
              <td class="xlsText"><%=rs("Act_leader")%></td>
              <td class="xlsText"><%=rs("Act_tel")%></td>
              <td class="xlsText"><%=rs("Act_teacher")%></td>
              <td class="xlsText"><%=rs("Act_teams")%></td>
              <td class="xlsText"><%=rs("Act_budget")%></td>
              <td class="xlsText"><%=rs("Act_introduction")%></td>
              <td class="xlsText"><%=rs("Act_method")%></td>
              <td class="xlsText"><%=rs("Act_category")%></td>
              <td class="xlsText"><%=rs("Act_time")%></td>
              <td class="xlsText"><%=rs("Act_apptime")%></td>
		<%if rs("Act_check")=0 then%>
              <td class="xlsText"><%="未审核"%></td>
		<%elseif rs("Act_check")=2 then%>
              <td class="xlsText"><%="不通过"%></td>
		<%elseif rs("Act_check")=1 then%>
              <td class="xlsText"><%="通过(公费)"%></td>
		<%else%>
              <td class="xlsText"><%="通过(自费)"%></td>
		<%end if%>
              </tr>
<%
   rs.movenext
   loop
   rs.close
   set rs = nothing
%>
</table>
<%
response.ContentType   = "application/vnd.ms-excel "
%>  