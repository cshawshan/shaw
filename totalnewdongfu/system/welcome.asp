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
		
	</head>
  
	<body>
	<div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		<div id="main-content"> <!-- Main Content Section with everything -->
			
			<noscript> <!-- Show a notification if the user has disabled javascript -->
				<div class="notification error png_bg">
					<div>
						Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
					Download From <a href="http://www.exet.tk">exet.tk</a></div>
				</div>
			</noscript>
			
			<!-- Page Head -->
			<h2>Welcome to Database </h2>
			<p id="page-intro">你希望做什么?</p>
			
			<ul class="shortcut-buttons-set">
				<%if  cint(session("adminpower"))=2 then%>
				<li><a class="shortcut-button" href="../project_apply.asp"><span>
					<img src="images/icons/pencil_48.png" alt="icon" /><br />
					新增立项
				</span></a></li>
				<li><a class="shortcut-button" href="../project_view.asp"><span>
					<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					查看立项</span></a></li>

				<%elseif  cint(session("adminpower"))=1 then%>
				<li><a class="shortcut-button" href="activity_check.asp"><span>
					<img src="images/icons/pencil_48.png" alt="icon" /><br />
					立项审核
				</span></a></li>
				<li><a class="shortcut-button" href="news.asp"><span>
					<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					发布资讯</span></a></li>

				<%elseif  cint(session("adminpower"))=3 then%>	
				<li><a class="shortcut-button" href="news.asp"><span>
					<img src="images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					发布资讯</span></a></li>
				<li><a class="shortcut-button" href="news_view.asp"><span>
					<img src="images/icons/pencil_48.png" alt="icon" /><br />
					查看资讯
				</span></a></li>
				<%end if%>
			</ul>
			<!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			<!-- End .content-box -->
			<!-- End .content-box -->
			<!-- End .content-box -->
<div class="clear"></div>
			
			
			<!-- Start Notifications -->
			<!-- End Notifications -->
</body>
  

<!-- Download From www.exet.tk-->
</html>
