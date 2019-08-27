<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>旅行社用户注册页面</title>
	<!-- Fav  Icon Link -->
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- themify icons CSS -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Main CSS -->
	<link rel="stylesheet" href="css/styles1.css">
	<link rel="stylesheet" href="css/green.css" id="style_theme">
	<link rel="stylesheet" href="css/responsive1.css">

	<script src="js/modernizr.min.js"></script>
</head>

<body class="auth-bg">
	<!-- Pre Loader -->
	<!-- <div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	/Pre Loader -->
	<!-- Color Changer -->
	<div class="theme-settings" id="switcher">
		<span class="theme-click">
			<span class="ti-settings"></span>
		</span>
		<span class="theme-color theme-default theme-active" data-color="green"></span>
		<span class="theme-color theme-blue" data-color="blue"></span>
		<span class="theme-color theme-red" data-color="red"></span>
		<span class="theme-color theme-violet" data-color="violet"></span>
		<span class="theme-color theme-yellow" data-color="yellow"></span>
	</div>
	<!-- /Color Changer -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 auth-box">
						<div class="lochana-box-shadow">
							<!-- Page Title -->
							<h3 class="widget-title">注册</h3>
							<!-- /Page Title -->

							<!-- Form -->
							<!-- action表示将表单提交到哪里-->
							<form id="form" action="UserAddServlet" method="post" class="widget-form">
								
								<div class="form-group row">
									<div class="col-sm-12">
										<input name="username" placeholder="用户名" class="form-control" required="" data-validation="length alphanumeric" data-validation-length="3-12"
										 data-validation-error-msg="User name has to be an alphanumeric value (3-12 chars)" data-validation-has-keyup-event="true">
									</div>
								</div>
								
								<div class="form-group row">
									<div class="col-sm-12">
										<input  type="password" placeholder="密码" name="pas" class="form-control" data-validation="strength" data-validation-strength="2"
										id="input_pwd" data-validation-has-keyup-event="true">
									</div>
								</div>
								
								<div class="form-group row">
									<div class="col-sm-12">
										<input  type="password" placeholder="确认密码" name="pwdcfm" class="form-control" data-validation="strength"
										id="input_pwd_cfm" data-validation-strength="2" data-validation-has-keyup-event="true">
									</div>
								</div>
								
								<!-- Button -->
								<div class="button-btn-block">
									<button id="btn-submit" type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
								</div>
								<!-- /Button -->
								<!-- Linsk -->
								<div class="auth-footer-text">
									<small>已注册,
										<a href="login.jsp">登陆</a>点这里</small>
								</div>
								<!-- /Links -->
							</form>
							<!-- /Form -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Jquery Library-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<!-- Popper Library-->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap Library-->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom Script-->
	<script src="js/custom.js"></script>
	
	<%-- <script type="text/javascript">
	   $(document).ready(function(){
		  var input_pwd = $("#input_pwd");
		  var input_pwd_cfm=$("#input_pwd_cfm");
		  $("#btn-submit").click(function(){
			  var pwd =input_pwd.val();
			  var pwd_cfm =input_pwd_cfm.val();
			  console.log(pwd);
			  //判断两次密码是否一致
			  if (pwd != pwd_cfm) {
				alert("两次密码输入不一致");
				return false;
			}
			  //正常提交
			  $("#form").submit();
		  });
	   });
	</script>
<script type="text/javascript">
	<%
	  String error=request.getParameter("error");
	  if(error!=null){
	%>	  
	  var error=<%=error%>;
	  if(error==1){
		  alert("注册失败！");
	  }else if(error==2){
		  alert("用户名重复");
	  }else if(error==3){
		  alert("邮箱已被使用");
	  }
   <%}%>

</script> --%>
	
</body>

</html>