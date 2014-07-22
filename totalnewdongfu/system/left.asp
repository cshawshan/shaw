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
	<body style="background: #f0f0f0 url('images/bg-body.gif');">
	<div id="sidebar">
	  <div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
		  
			<!-- Logo (221px wide) -->
			<img id="logo" src="images/logo.png" alt="�������硱��Ŀ�걨ϵͳ" />
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
				<font color="white"><%=session("adminname")%></font><br />
				<br />
				<a href="logout.asp" target="main">��ȫ�˳�</a>
			</div>        
			<% If Session("adminpower")=2 Then %>
			<ul id="main-nav">  <!-- Accordion Menu -->
				<li>
					<a href="#" class="nav-top-item">����Ǽ�</a>
					<ul>
						<li><a href="../project_apply.asp" target="main">��������</a></li>
						<li><a href="../project_view.asp" target="main">�鿴����</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">�����Ѷ</a>
					<ul>
						<li><a href="news2.asp" target="main">������Ѷ</a></li>
						<li><a href="news_view2.asp" target="main">�鿴��Ѷ</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">��Ϣά��</a>
					<ul>
						<li><a href="system_user.asp" target="main">������Ϣ</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">��ϵ����</a>
					<ul>
						<li><a href="contact_us.asp" target="main">��ϵ����</a></li>
					</ul>
				</li>
			</ul> <!-- End #main-nav -->
			<% elseif Session("adminpower")=3 Then %>
			<ul id="main-nav">  <!-- Accordion Menu -->
				<li>
					<a href="#" class="nav-top-item">�����</a>
					<ul>
						<li><a href="activity_check2.asp" target="main">�������</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">�����Ѷ</a>
					<ul>
						<li><a href="news1.asp" target="main">������Ѷ</a></li>
						<li><a href="news_view1.asp" target="main">�鿴��Ѷ</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">��Ϣά��</a>
					<ul>
						<li><a href="system_user.asp" target="main">������Ϣ</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">��ϵ����</a>
					<ul>
						<li><a href="contact_us.asp" target="main">��ϵ����</a></li>
					</ul>
				</li>
			</ul> <!-- End #main-nav -->
			<% else %>
			<ul id="main-nav">  <!-- Accordion Menu -->
				<li>
					<a href="#" class="nav-top-item">�����</a>
					<ul>
						<li><a href="activity_check.asp" target="main">�������</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">�����Ѷ</a>
					<ul>
						<li><a href="news.asp" target="main">������Ѷ</a></li>
						<li><a href="news_view.asp" target="main">�鿴��Ѷ</a></li>
					</ul>
				</li>				
				<li>
					<a href="#" class="nav-top-item">��Ϣά��</a>
					<ul>
						<li><a href="system_user.asp" target="main">�û�����</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="nav-top-item">��ϵ����</a>
					<ul>
						<li><a href="contact_us.asp" target="main">��ϵ����</a></li>
					</ul>
				</li>
			</ul> <!-- End #main-nav -->
			<% end if %>

    </div>
	</div>
	</body> <!-- End #sidebar -->