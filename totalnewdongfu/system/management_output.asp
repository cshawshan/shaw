<!--#include file="Inc/conn.asp"-->
<!--#include file="Inc/logincheck.asp"-->

<head>
  <style type="text/css">
   .xlsText{mso-style-parent:style0;mso-number-format:"\@";} 
  </style>
</head>

<table>
			<tr>
				<td>ѧԺ/��֯</td>
				<td>ʵ���ص�</td>
				<td>�������</td>
				<td>�����ϵ��ʽ</td>
				<td>ָ����ʦ����</td>
				<td>�Ŷ�����</td>
				<td>����Ԥ��</td>
				<td>����</td>
				<td>ʵ������</td>
				<td>ʵ�����</td>
				<td>�ʱ��</td>
				<td>�ύʱ��</td>
				<td>������</td>
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
              <td class="xlsText"><%="δ���"%></td>
		<%elseif rs("Act_check")=2 then%>
              <td class="xlsText"><%="��ͨ��"%></td>
		<%elseif rs("Act_check")=1 then%>
              <td class="xlsText"><%="ͨ��(����)"%></td>
		<%else%>
              <td class="xlsText"><%="ͨ��(�Է�)"%></td>
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