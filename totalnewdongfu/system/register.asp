<%Response.Charset = "gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>ע��</title>
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
			#contain{ width:600px;margin:0px auto;}
		</style>
		
		<script>
		function User(){
			var a = document.getElementById("user");
			if (a.value == ""){ 
				document.getElementById("image1").src = "/Images/wrong.gif";
				document.getElementById("image1").style.visibility = "visible";
				}
			else {document.getElementById("image1").src = "/Images/right.gif";
				document.getElementById("image1").style.visibility = "visible";
			}
		}
		
		function Id(){
			var a = document.getElementById("id");
			//alert(a.value.length);
			if ((a.value.substring(0,4)==="2012"||a.value.substring(0,4)==="2013")&&a.value.length===12){ 
				document.getElementById("image2").src = "/Images/right.gif";
				document.getElementById("image2").style.visibility = "visible";
				}
			else {
				document.getElementById("image2").src = "/Images/wrong.gif";
				document.getElementById("image1").style.visibility = "visible";		
				}
		}
		
		
		</script>
	</head>
<body>
<%
randomize
a1 = int(10*rnd)
a2 = int(10*rnd)
a3 = int(10*rnd)
a4 = int(10*rnd)
session("verification") = a1&a2&a3&a4
%>
<div id="contain">
<div id="body-wrapper">
<div id="main-content">	
<form action="registercode.asp" method="post">
<p align="left">��ӭע�ᣨ���¾�Ϊ�����</p>
<table>
<tr>
<td align="center">
<table>
<tr>
   <td>
       <p>�û�����</p>   </td>
   <td>
	   <input id = "user" type="text" name="user" value="" onchange = "User()"/> 
	   </td> <td style.visibility = "hidden"><image id = "image1" ></td>
</tr>
<tr>
   <td>
       <p>ѧ�ţ�</p>   </td>
   <td>
	   <input id = "id" type="text" name="num" value="" onchange = "Id()"/>	</td>
	   </td> <td style.visibility = "hidden"><image id = "image2" ></td>
</tr>
<tr>
   <td>
      <p>ע�����룺</p>   </td>

   <td>
	   <input type="password" name="passwd" value="" />	</td>
</tr>
<tr>
   <td>
      <p>ȷ������:</p>	</td>
	<td>
	   <input type="password" name="passwd2" value="" />	 </td>
</tr>   
<tr>
   <td>
      <p>��ʵ����:</p>	</td>
	<td>
	   <input type="text" name="name" value="" />	 </td>
</tr>   
<tr>
    <td>
	<p>ѧԺ/��֯:</p>	</td>
        <td>
	   <select name="class"><!--#include file="academy.asp"--></select>
</td>
</tr>
<tr>
   <td>
      <p>רҵ:</p>	</td>
	<td>
	   <input type="text" name="pro" value="" />	 </td>
</tr> 
<tr>
   <td>
      <p>�绰:</p>	</td>
	<td>
	   <input type="text" name="tel" value="" />	 </td>
</tr> 
<tr>
   <td>
      <p>��֤��:<%=a1%><%=a2%><%=a3%><%=a4 %></p>	</td>
	<td>
	   <input type="text" name="vcode" value="" />	 </td>
</tr>

 <tr>
   <td></td>
   <td><input type="submit" name="submit" value="�ύ"><input type="button" onclick="location.href='login.asp'" value="����" /></td>
</tr>
 </table>
 </td>

 </tr>
 </table>
</form>
</div>
</div>
</div>
</body>
</html>


