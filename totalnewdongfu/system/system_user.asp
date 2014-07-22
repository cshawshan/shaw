<!--#include file="Inc/conn.asp"-->
<!--#include file="Inc/logincheck.asp"-->


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
		<style>
			#contain{margin-left:30px;margin-top:40px;}
			span{font-size:17px;}
			h2{font-family: Helvetica, Arial, sans-serif;color: #222;font-weight: bold;}
		</style>
	</head>
<body>
	<div id="body-wrapper">
	<div id="main-content">	
		<br /><br /><br />
		<div>
			<h2>User Management</h2>
			<span>有什么能帮到您呢？</span>
		</div>
		<br /><br /><br />
		
		<div>
		<ul class="shortcut-buttons-set">
			<li><a class="shortcut-button" href="information.asp"><span>
				<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
				个人信息
			</span></a></li>
			<%if cint(session("adminpower"))<2 then%>
			<li><a class="shortcut-button" href="adduser.asp"><span>
				<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
				添加用户</span></a></li>
			<li><a class="shortcut-button" href="otheruser.asp"><span>
				<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
				其他用户</span></a></li>
			<%end if%>
		</ul>
		</div>	
		<br /><br /><br /><br /><br /><br /><br /><br />		
		<!--#include file="../Public/foot.asp"-->
	</div>
	</div>
</body>
</html>