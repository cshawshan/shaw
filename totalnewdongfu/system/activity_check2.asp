<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Inc/check_session.asp"-->
<!--#include file="Inc/conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�������</title>
	
	<!------------------------CSS--------------------------->
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="../system/css/reset.css" type="text/css" media="screen" />
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="../system/css/style.css" type="text/css" media="screen" />
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="../system/css/invalid.css" type="text/css" media="screen" />	
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="../system/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!----------------------Javascripts------------------------->
  
		<!-- jQuery -->
		<script type="text/javascript" src="../system/scripts/jquery-1.3.2.min.js"></script>
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="../system/cripts/simpla.jquery.configuration.js"></script>
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="../system/cripts/facebox.js"></script>
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="../system/cripts/jquery.wysiwyg.js"></script>
		<!-- jQuery Datepicker Plugin -->
		<script type="text/javascript" src="../system/cripts/jquery.datePicker.js"></script>
		<script type="text/javascript" src="../system/cripts/jquery.date.js"></script>
		<!--[if IE]><script type="text/javascript" src="scripts/jquery.bgiframe.js"></script><![endif]-->

		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="../system/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->

		<style>
			#contain{margin-left:30px;margin-top:40px;}
			span{font-size:17px;}
			h2{font-family: Helvetica, Arial, sans-serif;color: #222;font-weight: bold;}
			table{width:2000px;}
			table tr{height:40px;}
			table td{border:1px solid #e3e3e3;}
		</style>

</head>

<body>
<div id="contain">
	<div>
		<h2>Message Viewing</h2>
		<span>����ֻ��ʾ������ѧԺ����������</span>
	</div>
	<br /><br /><br />
		<table>
			<tr><form method="post" ><td colspan="9">
				��������<select name="activity_check" onChange="javascript:this.form.submit();">
<% session("activity_check")=request.Form("activity_check")
   if session("activity_check")="" then
%>
					<option value=3>����</option>
					<option value=0>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% elseif session("activity_check")=0 then
%>
					<option value=3>����</option>
					<option value=0 selected>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% elseif session("activity_check")=1 then
%>
					<option value=3>����</option>
					<option value=0>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1 selected>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% elseif session("activity_check")=2 then
%>
					<option value=3>����</option>
					<option value=0>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2 selected>��ͨ��</option>
<% elseif session("activity_check")=3 then
%>
					<option value=3 selected>����</option>
					<option value=0>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% elseif session("activity_check")=4 then
%>
					<option value=3>����</option>
					<option value=0>δ���</option>
					<option value=5>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4 selected>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% elseif session("activity_check")=5 then
%>
					<option value=3>����</option>
					<option value=0>δ���</option>
					<option value=5 selected>����ͨ��</option>
					<option value=1>ͨ��(����)</option>
					<option value=4>ͨ��(�Է�)</option>
					<option value=2>��ͨ��</option>
<% end if %>
					</select>
					
				</td></form>
			</tr>
			<%set rs=server.CreateObject("ADODB.recordset")%>
<% if session("activity_check")=3 then %>
			<%sql="select * from Activity where Act_academy='"&session("academy")&"' order by id desc"%>
<% else %>
			<%sql="select * from Activity where Act_academy='"&session("academy")&"' and Act_check like '%"&request("activity_check")&"%' order by id desc"%>
<% end if %>
			<%rs.open sql,conn,1,3%>
			<tr align="center">
				<td style="line-height:30px;">ѧԺ/��֯</td>
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
				<td>�鿴�ļ�</td>
				<td>������</td>
				<td>&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</td>
			</tr>
			<%if rs.eof or rs.bof then%>
			<%else%>
			<!--#include file="../public/divide_page.asp"-->
			<tr align="center">
				<td><%=rs("Act_academy")%></td>
				<td><%=rs("Act_add")%></td>
				<td><%=rs("Act_leader")%></td>
				<td><%=rs("Act_tel")%></td>
				<td><%=rs("Act_teacher")%></td>
				<td><%=rs("Act_teams")%></td>
				<td><%=rs("Act_budget")%></td>
				<td><textarea cols="30" rows="5"><%=rs("Act_introduction")%></textarea></td>
				<td><%=rs("Act_method")%></td>
				<td><%=rs("Act_category")%></td>
				<td><%=rs("Act_time")%></td>
				<td><%=rs("Act_apptime")%></td>
				<td><a href="../<%=rs("Act_file")%>" target="_blank">����</a></td>
				<td>
				<%if rs("Act_check")=0 then%>
				<%="δ���"%>
				<%elseif rs("Act_check")=2 then%>
				<%="��ͨ��"%>
				<%elseif rs("Act_check")=1 then%>
				<%="ͨ��(����)"%>
				<%elseif rs("Act_check")=5 then%>
				<%="����ͨ��"%>
				<%else%>
				<%="ͨ��(�Է�)"%>
				<%end if%>
				</td>
				<td>
					<form method="post" action="checkcode2.asp">
						<input type="submit" value="����ͨ��" />
						<input type="hidden" name="val" value="5" />
						<input type="hidden" name="id" value="<%=rs("ID")%>"/>
					</form>
					<form method="post" action="checkcode2.asp">
						<input type="submit" value="��ͨ��" />
						<input type="hidden" name="val" value="2" />
						<input type="hidden" name="id" value="<%=rs("ID")%>"/>
					</form>
				</td>
			</tr>
			<tr><td colspan="3"><!--#include file="../public/divide_pagediv.asp"--></td>
			<td colspan="2">
<form action="management_output.asp" target="_blank" method="post" >
<input type="hidden" name="academy" value="<%=request("academy")%>">
<input type="hidden" name="activity_check" value="<%=request("activity_check")%>">
<br />
<input type="submit" name="Submit" value="�������ݵ�Excel�ĵ�"/>
</form>
			</td>
			<td colspan="6"><font style="color:red; line-height:40px;">ע��:������Excel�ĵ�������ƽʱʹ�õĲ�̫һ��������������е����ݸ���ճ�����½���Excel�ĵ���</font>
			</td>
			</tr>
			<%end if%>
		</table>

	<!--#include file="../Public/foot.asp"-->
<%rs.close%>
<%conn.close%>
</div>
</body>
</html>
