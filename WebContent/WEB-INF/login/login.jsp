<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.6
Version: 1.6.0
Purchase: https://wrapbootstrap.com/theme/beyondadmin-adminapp-angularjs-mvc-WB06R48S4
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!--Head-->
<head>
<meta charset="utf-8" />
<title>로그인</title>

<meta name="description" content="login page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">

<!--Basic Styles-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<!--Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
	rel="stylesheet" type="text/css">

<!--Beyond styles-->
<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" />
<link href="assets/css/demo.min.css" rel="stylesheet" />
<link href="assets/css/animate.min.css" rel="stylesheet" />

<!-- Custom CSS--->
<link href="assets/css/style.css" rel="stylesheet">

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>

<!--랜덤 백그라운드-->
<script language="text/JavaScript">
	document.write(
			"<body background='assets/img/bg/" + Math.ceil(Math.random() * 2)
					+ ".jpg'>")
</script>

</head>
<!--Head Ends-->
<!--Body-->
<body id="loginbg">
	<div>
		<div class="middle-box text-center loginscreen animated fadeInDown">
			<div>
				<h1 class="logo-name">
					<img src="assets/img/logo-sm.png" alt="LogSmartrics 로고">
				</h1>
			</div>
			<h3>Welcome to JSPworld</h3>
			<p>
				비밀번호를 입력해주세요.
				<!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
			</p>
			<form class="mgt15" role="form" action="MemLoginAction.do" method="post">
				<div class="form-group">
					<input type="text" class="form-control text-center w300"
						placeholder="ID" required maxlength="15" name="id"> <input
						type="password" class="form-control text-center w300"
						placeholder="PASSWORD" required maxlength="10" name="password">
					<button type="submit"
						class="btn btn-primary block full-width m-b w300">
						<i class="fa fa-key"></i>Login
					</button>
				</div>
			</form>
			<form action="MemJoinForm.do" method="post">
				<button type="submit"
					class="btn btn-primary block full-width m-b w300">
					<i class="fa fa-key"></i>&nbsp;&nbsp;register
				</button>
			</form>
		</div>
	</div>
	<!--Basic Scripts-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/slimscroll/jquery.slimscroll.min.js"></script>

	<!--Beyond Scripts-->
	<script src="assets/js/beyond.js"></script>


</body>
<!--Body Ends-->
</html>