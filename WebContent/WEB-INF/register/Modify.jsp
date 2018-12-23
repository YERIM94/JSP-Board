<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--Head-->
<head>
<meta charset="utf-8" />
<title>Modify Page</title>

<meta name="description" content="register page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">

<!--Basic Styles-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<!--Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
	rel="stylesheet" type="text/css">

<!--Beyond styles-->
<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" />
<link href="assets/css/demo.min.css" rel="stylesheet" />
<link href="assets/css/animate.min.css" rel="stylesheet" />
<link id="skin-link" href="" rel="stylesheet" type="text/css" />

<!-- Custom CSS--->
<link href="assets/css/style.css" rel="stylesheet">

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>

<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$('#submitBtn').on('click', function() {
			var params = $('#regForm').serialize();
			$.ajax({
				url : '/WEB-INF/login/login.jsp',
				data : params,
				success : function(data) {
					var succ = data.trim();
					if (succ == "Y") {
						location.href = "b.jsp";
					} else {
						alert('실패');
					}
				}
			});
		});
	});
</script> -->

</head>

<!--Head Ends-->
<!--Body-->
<body>
	<div class="register-container animated fadeInDown">
		<div class="registerbox bg-white">
			<div class="registerbox-title">Modify</div>

			<div class="registerbox-caption ">Please fill in your
				information</div>

			<form action="MemModifyAction.do" method="post" id="regForm">
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="id" name="id" value="${member.id}" disabled/>
				</div>
				<div class="registerbox-textbox">
					<input type="password" class="form-control"
						placeholder="Enter Password" name="password" value="${member.password}"/>
				</div>
				<hr class="wide" />
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="Name"
						name="name" value="${member.name}"/>
				</div>
				<div class="registerbox-textbox">
					<div class="row">
						<div class="col-lg-6 col-sm-6 col-xs-6 padding-right-10">
							<div>
								<input type="number" class="form-control" placeholder="Year"
									name="birthyy" value="${member.birthyy}"/>
							</div>
							<div>
								<input type="number" class="form-control" placeholder="Month"
									name="birthmm" value="${member.birthmm}"/>
							</div>
							<div>
								<input type="text" class="form-control" placeholder="Day"
									name="birthdd" value="${member.birthdd}"/>
							</div>
						</div>
					</div>
				</div>
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="mail1"
						name="mail1" value="${member.mail1}"/>
				</div>
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="mail2"
						name="mail2" value="${member.mail2}"/>
				</div>
				<div class="registerbox-textbox">
					<input type="number" class="form-control" placeholder="phone1"
						name="phone1" value="${member.phone1}"/>
				</div>
				<div class="registerbox-textbox">
					<input type="number" class="form-control" placeholder="phone2"
						name="phone2" value="${member.phone2}" />
				</div>
				<div class="registerbox-textbox">
					<input type="text" class="form-control" placeholder="address"
						name="adress" value="${member.address}"/>
				</div>
				<div class="registerbox-textbox">
					<input type="number" class="form-control" placeholder="zipcode"
						name="zipcode"value="${member.zipcode}" />
				</div>
				<div class="registerbox-submit">
					<input type="submit" class="btn btn-primary pull-right"
						value="SUBMIT" id="submitBtn">
				</div>
			</form>
		</div>
	</div>


	<!--Basic Scripts-->
	<!-- <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/slimscroll/jquery.slimscroll.min.js"></script>

	Beyond Scripts
	<script src="assets/js/beyond.min.js"></script> -->

</body>
<!--Body Ends-->
</html>
