<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardWrite</title>

<meta charset="utf-8">


<meta name="description" content="form validation">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">

<!--Basic Styles-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link id="bootstrap-rtl-link" href="" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link href="assets/css/weather-icons.min.css" rel="stylesheet">

<!--Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
	rel="stylesheet" type="text/css">

<!--Beyond styles-->
<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet">
<link href="assets/css/demo.min.css" rel="stylesheet">
<link href="assets/css/typicons.min.css" rel="stylesheet">
<link href="assets/css/animate.min.css" rel="stylesheet">
<link id="skin-link" href="" rel="stylesheet" type="text/css">

<!-- Custom CSS--->
<link href="assets/css/style.css" rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$('btn_back').click(funtion(){
		$('#subject').val('');	
		$('#content').val('');
	})	
});

</script>
<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>
</head>
<body>
	<div class="page-content">
		<!-- Page Breadcrumb -->

		<div class="page-header position-relative">
			<div class="header-title">
				<h1>Board</h1>
			</div>
			<!--Header Buttons-->
			<div class="header-buttons">
				<a class="sidebar-toggler" href="#"> <i class="fa fa-arrows-h"></i>
				</a> <a class="refresh" id="refresh-toggler" href=""> <i
					class="glyphicon glyphicon-refresh"></i>
				</a> <a class="fullscreen" id="fullscreen-toggler" href="#"> <i
					class="glyphicon glyphicon-fullscreen"></i>
				</a>
			</div>
		</div>
		<div class="widget-body"
			style="width: 95%; margin-left: auto; margin-right: auto; margin-top: 30px;">
			<form id="writeForm" method="post" class="form-horizontal bv-form" action="BoardWriteAction.do"
				style="margin-right: auto; margin-left: auto;">

				<div class="form-title">Write</div>
				<div class="form-group has-feedback">
					<label class="col-lg-2 control-label">ID</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="id" readOnly
							value="${sessionScope.sessionID}">
					</div>
				</div>

				<div class="form-group has-feedback">
					<label class="col-lg-2 control-label">Email</label>
					<div class="col-lg-8">
						<input type="email" class="form-control" name="email"
							placeholder="Email Address" value="${email}" readOnly><i
							class="form-control-feedback"></i>
					</div>
				</div>

				<div class="form-group has-feedback">
					<label class="col-lg-2 control-label">Subject</label>
					<div class="col-lg-8">
						<input class="form-control" name="subject" type="text"
							placeholder="Subject" data-bv-emailaddress="true"><i
							class="form-control-feedback"></i>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label class="col-lg-2 control-label">Content</label>
					<textarea name="content" cols="169" rows="20"
						style="margin-left: 16px;"></textarea>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-1">
						<input class="btn btn-palegreen" type="submit" value="Submit">
					</div>

				</div>
			</form>
			<form style="margin: 10px;">
				<button class="btn btn-palegreen" type="submit" name="btn_back">rewrite</button>
			</form>
			<form style="margin: 10px" action="BoardList.do" method="post">
				<button class="btn btn-palegreen" type="submit">Back</button>
			</form>
		</div>
</body>
</html>