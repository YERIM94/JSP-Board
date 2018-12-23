<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Head -->
<head>
<meta charset="utf-8" />
<title>User Profile</title>

<meta name="description" content="user profile" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">

<!--Basic Styles-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/css/weather-icons.min.css" rel="stylesheet" />

<!--Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
	rel="stylesheet" type="text/css">

<!--Beyond styles-->
<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" />
<link href="assets/css/demo.min.css" rel="stylesheet" />
<link href="assets/css/typicons.min.css" rel="stylesheet" />
<link href="assets/css/animate.min.css" rel="stylesheet" />
<link id="skin-link" href="" rel="stylesheet" type="text/css" />

<!-- Custom CSS--->
<link href="assets/css/style.css" rel="stylesheet">

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>


</head>
<!-- /Head -->
<!-- Body -->
<body>
	<!-- Page Content -->
	<div class="page-content">
		<!-- Page Breadcrumb -->
		<div class="page-header position-relative">
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
		<div class="page-breadcrumbs">
			<a class="btn btn-link" type="button">Profile</a>
			<form action="BoardListAction.do" method="post">
				<button class="btn btn-link" type="submit">Board</button>
			</form>
			<form action="MemListAction.do" method="post">
				<button class="btn btn-link" type="submit">Admin</button>
			</form>
			<form action="MemLogoutAction.do" method="post">
				<button class="btn btn-link" type="submit">Logout</button>
			</form>
			<form action="MemModifyFormAction.do" method="post">
				<button class="btn btn-link" type="submit">Modify</button>
			</form>
			<%-- <%=session.getAttribute("sessionID")%> --%>
			<c:out value="${sessionScope.sessionID}"/>
			<!-- /Page Breadcrumb -->
			<!-- Page Header -->
			<div class="page-header position-relative">
				<div class="header-title">
					<h1>User Profile</h1>
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
			<!-- /Page Header -->
			<!-- Page Body -->
			<div class="page-body">
				<div class="row">
					<div class="col-md-12">
						<div class="profile-container">
							<div class="profile-header row">
								<div class="col-lg-2 col-md-4 col-sm-12 text-center">
									<img src="assets/img/avatars/divyia.jpg" alt=""
										class="header-avatar" />
								</div>
								<div class="col-lg-5 col-md-8 col-sm-12 profile-info">
									<div class="header-fullname">Kim Ryder</div>
									<div class="header-information">Kim is a software
										developer in Microsoft. She works in ASP.NET MVC Team and
										collaborates with other teams.</div>
								</div>
								<div
									class="col-lg-5 col-md-12 col-sm-12 col-xs-12 profile-stats">
									<div class="row">
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 stats-col">
											<div class="stats-value pink">284</div>
											<div class="stats-title">FOLLOWING</div>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 stats-col">
											<div class="stats-value pink">803</div>
											<div class="stats-title">FOLLOWERS</div>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 stats-col">
											<div class="stats-value pink">1207</div>
											<div class="stats-title">POSTS</div>
										</div>
									</div>
									<div class="row">
										<div
											class="col-lg-4 col-md-4 col-sm-4 col-xs-4 inlinestats-col">
											<i class="glyphicon glyphicon-map-marker"></i> Boston
										</div>
										<div
											class="col-lg-4 col-md-4 col-sm-4 col-xs-4 inlinestats-col">
											Rate: <strong>$250</strong>
										</div>
										<div
											class="col-lg-4 col-md-4 col-sm-4 col-xs-4 inlinestats-col">
											Age: <strong>24</strong>
										</div>
									</div>
								</div>
							</div>
							<div class="profile-body">
								<div class="col-lg-12">
									<div class="tabbable">
										<ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11">
											<li class="active"><a data-toggle="tab" href="#overview">
													Overview </a></li>
											<li class="tab-red"><a data-toggle="tab"
												href="#timeline"> Events </a></li>
											<li class="tab-palegreen"><a data-toggle="tab"
												id="contacttab" href="#contacts"> Contacts </a></li>
											<li class="tab-yellow"><a data-toggle="tab"
												href="#settings"> Settings </a></li>
										</ul>
										<div class="tab-content tabs-flat">
											<div id="overview" class="tab-pane active">
												<div class="row profile-overview">
													<div class="col-md-8">
														<h6 class="row-title before-themeprimary no-margin-top">PROFILE
															VISITS</h6>
														<div id="visit-chart" class="chart"></div>
														<h6 class="row-title before-orange">FOLLOWERS</h6>
														<div class="row">
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/Javi-Jimenez.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat orange radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-remove"></i>
																		</div>
																		<div class="databox-text darkgray">JAVI JIMENEZ</div>
																		<div class="databox-text darkgray">Manager</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/adam-jansen.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat palegreen radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-plus"></i>
																		</div>
																		<div class="databox-text darkgray">LEE MUNROE</div>
																		<div class="databox-text darkgray">Developer</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/Nicolai-Larson.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat palegreen radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-plus"></i>
																		</div>
																		<div class="databox-text darkgray">NICOLAI
																			LARSON</div>
																		<div class="databox-text darkgray">Manager</div>
																	</div>
																</div>
															</div>

														</div>
														<h6 class="row-title before-palegreen">FOLLOWING</h6>
														<div class="row">
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/John-Smith.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat orange radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-remove"></i>
																		</div>
																		<div class="databox-text darkgray">JOHN SMITH</div>
																		<div class="databox-text darkgray">Architect</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/Matt-Cheuvront.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat palegreen radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-plus"></i>
																		</div>
																		<div class="databox-text darkgray">MATT
																			CHEUVRONT</div>
																		<div class="databox-text darkgray">Developer</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4 col-sm-6 col-xs-12">
																<div class="databox databox-graded">
																	<div class="databox-left no-padding">
																		<img src="assets/img/avatars/Stephanie-Walter.jpg"
																			style="width: 65px; height: 65px;">
																	</div>
																	<div class="databox-right padding-top-20 bg-whitesmoke">
																		<div class="databox-stat orange radius-bordered">
																			<i class="stat-icon glyphicon glyphicon-remove"></i>
																		</div>
																		<div class="databox-text darkgray">KATE WALTER</div>
																		<div class="databox-text darkgray">Developer</div>
																	</div>
																</div>
															</div>

														</div>
													</div>
													<div class="col-md-4">
														<form method="post" class="well padding-bottom-10"
															onsubmit="return false;">
															<span class="input-icon icon-right"> <textarea
																	rows="2" class="form-control"
																	placeholder="Post a new message"></textarea> <i
																class="fa fa-camera themeprimary"></i>
															</span>
															<div class="padding-top-10 text-align-right">
																<a class="btn btn-sm btn-primary"> Send </a>
															</div>
														</form>
														<div>
															<div class="comment">
																<img src="assets/img/avatars/adam-jansen.jpg" alt=""
																	class="comment-avatar">
																<div class="comment-body">
																	<div class="comment-text">
																		<div class="comment-header">
																			<a href="#" title="">Adam Jansen</a><span>about
																				2 minuts ago</span>
																		</div>
																		Story based around the idea of time lapse, animation
																		to post soon!
																	</div>
																	<div class="comment-footer">
																		<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																			href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																			href="#">Reply</a>
																	</div>
																</div>

																<div class="comment">
																	<img src="assets/img/avatars/John-Smith.jpg" alt=""
																		class="comment-avatar">
																	<div class="comment-body">
																		<div class="comment-text">
																			<div class="comment-header">
																				<a href="#" title="">John Smith</a><span>about
																					1 hour ago</span>
																			</div>
																			Wow impressive!
																		</div>
																		<div class="comment-footer">
																			<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																				href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																				href="#">Reply</a>
																		</div>
																	</div>
																</div>

																<div class="comment">
																	<img src="assets/img/avatars/Matt-Cheuvront.jpg" alt=""
																		class="comment-avatar">
																	<div class="comment-body">
																		<div class="comment-text">
																			<div class="comment-header">
																				<a href="#" title="">Matt Cheuvront</a><span>about
																					2 hours ago</span>
																			</div>
																			Wow, that is really nice.
																		</div>
																		<div class="comment-footer">
																			<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																				href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																				href="#">Reply</a>
																		</div>
																	</div>

																	<div class="comment">
																		<img src="assets/img/avatars/Stephanie-Walter.jpg"
																			alt="" class="comment-avatar">
																		<div class="comment-body">
																			<div class="comment-text">
																				<div class="comment-header">
																					<a href="#" title="">Stephanie Walter</a><span>3
																						hours ago</span>
																				</div>
																				Nice work, makes me think of The Money Pit.
																			</div>
																			<div class="comment-footer">
																				<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																					href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																					href="#">Reply</a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="comment">
																<img src="assets/img/avatars/divyia.jpg" alt=""
																	class="comment-avatar">
																<div class="comment-body">
																	<div class="comment-text">
																		<div class="comment-header">
																			<a href="#" title="">Kim Ryder</a><span>about
																				4 hours ago</span>
																		</div>
																		i'm in the middle of a timelapse animation myself!
																		(Very different though.) Awesome stuff.
																	</div>
																	<div class="comment-footer">
																		<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																			href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																			href="#">Reply</a>
																	</div>
																</div>
															</div>
															<div class="comment">
																<img src="assets/img/avatars/Nicolai-Larson.jpg" alt=""
																	class="comment-avatar">
																<div class="comment-body">
																	<div class="comment-text">
																		<div class="comment-header">
																			<a href="#" title="">Nicolai Larson</a><span>10
																				hours ago</span>
																		</div>
																		the parallax is a little odd but O.o that house build
																		is awesome!!
																	</div>
																	<div class="comment-footer">
																		<a href="#"><i class="fa fa-thumbs-o-up"></i></a> <a
																			href="#"><i class="fa fa-thumbs-o-down"></i></a> <a
																			href="#">Reply</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="timeline" class="tab-pane">
												<ul class="timeline animated fadeInDown">
													<li>
														<div class="timeline-datetime">
															<span class="timeline-time"> 8:19 </span><span
																class="timeline-date">Today</span>
														</div>
														<div class="timeline-badge blue">
															<i class="fa fa-tag"></i>
														</div>
														<div class="timeline-panel">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<span class="timeline-title"> New Items Arrived </span>
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Today</span> - <span
																		class="timeline-time">8:19</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<p>Purchased new stationary items for head office</p>
															</div>
														</div>
													</li>
													<li class="timeline-inverted">
														<div class="timeline-datetime">
															<span class="timeline-time"> 3:10 </span><span
																class="timeline-date">Today</span>
														</div>
														<div class="timeline-badge darkorange">
															<i class="fa fa-map-marker font-120"></i>
														</div>
														<div
															class="timeline-panel bordered-right-3 bordered-orange">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<span class="timeline-title"> Visit Appointment </span>
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Today</span> - <span
																		class="timeline-time">3:10</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<p>Outdoor visit at California State Route 85 with
																	John Boltana &amp; Harry Piterson regarding to setup a
																	new show room.</p>
																<p>
																	<i class="orange fa fa-exclamation"></i> New task added
																	for <span><a href="#" class="info">James
																			Dean</a></span>
																</p>
															</div>
														</div>
													</li>

													<li>
														<div class="timeline-datetime">
															<span class="timeline-time"> 8:19 </span><span
																class="timeline-date">Yesterday</span>
														</div>
														<div class="timeline-badge sky">
															<i class="fa fa-bar-chart-o"></i>
														</div>
														<div class="timeline-panel bordered-top-3 bordered-azure">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<span class="timeline-title"> Bank Report </span>
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Yesterday</span> - <span
																		class="timeline-time">8:19</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<p>Curabitur ullamcorper ultricies nisi. Nam eget
																	dui. Etiam rhoncus. Maecenas tempus, tellus eget
																	condimentum rhoncus, sem quam semper libero, sem neque
																	sed ipsum.</p>
																Tellus eget condimentum rhoncus, sem quam semper libero,
																sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
																blandit
															</div>
														</div>
													</li>
													<li class="timeline-inverted">
														<div class="timeline-datetime">
															<span class="timeline-time"> 6:08 </span><span
																class="timeline-date">Yesterday</span>
														</div>
														<div class="timeline-badge sky">
															<img src="assets/img/avatars/Sergey-Azovskiy.jpg"
																class="badge-picture" />
														</div>
														<div class="timeline-panel">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<span class="timeline-title"> <a href="">Sergey
																		Azovskiy</a> has commented on your <a href="">status</a>
																</span>
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Yesterday</span> - <span
																		class="timeline-time">6:08</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<p>
																	<i class="orange fa fa-quote-left"></i> Happy Birthday
																	Lydia.
																</p>
															</div>
														</div>
													</li>
													<li>
														<div class="timeline-datetime">
															<span class="timeline-time"> 7:00 </span><span
																class="timeline-date">Yesterday</span>
														</div>
														<div class="timeline-badge danger">
															<i class="fa fa-exclamation font-120"></i>
														</div>
														<div class="timeline-panel">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<span class="timeline-title danger"> Deadline
																	Added </span>
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Yesterday</span> - <span
																		class="timeline-time">7:00</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<p>
																	Dyvia Phillips added new milestone <span><a
																		class="danger" href="#">UI</a></span> Lorem ipsum dolor sit
																	amet consiquest dio
																</p>
															</div>
														</div>
													</li>
													<li class="timeline-inverted">
														<div class="timeline-datetime">
															<span class="timeline-time"> 3:09 </span><span
																class="timeline-date">Yesterday</span>
														</div>
														<div class="timeline-badge">
															<i class="fa fa-picture-o darkpink"></i>
														</div>
														<div class="timeline-panel">
															<div
																class="timeline-header bordered-bottom bordered-blue">
																<p class="timeline-datetime">
																	<small class="text-muted"> <i
																		class="glyphicon glyphicon-time"> </i> <span
																		class="timeline-date">Yesterday</span> - <span
																		class="timeline-time">3:09</span>
																	</small>
																</p>
															</div>
															<div class="timeline-body">
																<a href="#">John Travolta</a> shared an image on <a
																	href="#">Dribble</a>
																<div class="tl-wide text-center"
																	style="padding: 5px; margin-top: 10px; margin-bottom: 10px;">
																	<img src="assets/img/temp1.png" alt=""
																		style="max-height: 158px; max-width: 100%;">
																</div>
																<i class="text-muted text-sm">Lorem ipsum dolor sit
																	amet, consectetur adipisicing elit, sed do eiusmod
																	tempor incididunt ut labore et dolore magna aliqua.</i>
															</div>
														</div>
													</li>
													<li class="timeline-node"><a class="btn btn-yellow">LOAD
															MORE</a></li>
												</ul>
											</div>
											<div id="contacts" class="tab-pane">
												<div class="row">
													<div class="col-md-6">
														<div class="profile-contacts">

															<div class="profile-badge orange">
																<i class="fa fa-phone orange"></i><span>Contacts</span>
															</div>
															<div class="contact-info">
																<p>
																	Phone : +1 1 2345 6789 <br> Cell : +1 9 876 5432
																</p>
																<p>
																	Email : kim@gmail.com <br> Skype : kim.ryder
																</p>
																<p>
																	Facebook : facebook.com/Kim.Ryder <br> Twitter :
																	@KimRyder
																</p>
															</div>
															<div class="profile-badge azure">
																<i class="fa fa-map-marker azure"></i><span>Location</span>
															</div>
															<div class="contact-info">
																<p>
																	Address<br> Department 98<br> 44-46
																	Morningside Road<br> Toronto, Canada
																</p>
																<p>
																	Office<br> 44-46 Morningside Road<br>
																	Toronto, Canada
																</p>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div id="contact-map" class="animated flipInY"></div>
													</div>
												</div>
											</div>
											<div id="settings" class="tab-pane">
												<form role="form">
													<div class="form-title">Personal Information</div>
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Name">
																	<i class="fa fa-user blue"></i>
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Family">
																	<i class="fa fa-user orange"></i>
																</span>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Phone">
																	<i class="glyphicon glyphicon-earphone yellow"></i>
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Mobile">
																	<i class="glyphicon glyphicon-phone palegreen"></i>
																</span>
															</div>
														</div>
													</div>
													<hr class="wide">
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	class="form-control date-picker" id="id-date-picker-1"
																	type="text" data-date-format="dd-mm-yyyy"
																	placeholder="Birth Date"> <i
																	class="fa fa-calendar"></i>
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control"
																	placeholder="Birth Place"> <i
																	class="fa fa-globe"></i>
																</span>
															</div>
														</div>
													</div>
													<div class="form-title">Social Networks</div>
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Facebook">
																	<i class="fa fa-facebook purple"></i>
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Twitter">
																	<i class="fa fa-twitter azure"></i>
																</span>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control"
																	placeholder="Pinterest"> <i
																	class="fa fa-pinterest red"></i>
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control" placeholder="Flickr">
																	<i class="fa fa-flickr blue"></i>
																</span>
															</div>
														</div>
													</div>
													<div class="form-title">Contact Information</div>
													<div class="row">
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control"
																	placeholder="Address 1">
																</span>
															</div>
														</div>
														<div class="col-sm-6">
															<div class="form-group">
																<span class="input-icon icon-right"> <input
																	type="text" class="form-control"
																	placeholder="Address 1">
																</span>
															</div>
														</div>
													</div>
													<button type="submit" class="btn btn-primary">Save
														Profile</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->
		<!-- /Page Container -->
		<!-- Main Container -->

		<!--Basic Scripts-->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/slimscroll/jquery.slimscroll.min.js"></script>

		<!--Beyond Scripts-->
		<script src="assets/js/beyond.min.js"></script>

		<!--Page Related Scripts-->
		<script
			src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
		<script
			src="https://maps.gstatic.com/intl/en_us/mapfiles/api-3/17/0/main.js"
			type="text/javascript"></script>

		<script src="assets/js/charts/flot/jquery.flot.js"></script>
		<script src="assets/js/charts/flot/jquery.flot.resize.js"></script>

		<script>
			//Google Map
			$('#contacttab')
					.click(
							function() {
								function initialize() {
									var myLatlng = new google.maps.LatLng(
											43.6531935, -79.3806243);
									var mapOptions = {
										zoom : 15,
										scrollwheel : false,
										center : myLatlng,
										mapTypeId : google.maps.MapTypeId.ROADMAP
									}
									var map = new google.maps.Map(document
											.getElementById('contact-map'),
											mapOptions);
									var marker = new google.maps.Marker({
										position : myLatlng,
										map : map,
										title : 'Map'
									});
								}
								google.maps.event.addDomListener(window,
										'click', initialize);
							});

			$(window)
					.bind(
							"load",
							function() {

								/*Sets Themed Colors Based on Themes*/
								themeprimary = getThemeColorFromCss('themeprimary');
								themesecondary = getThemeColorFromCss('themesecondary');
								themethirdcolor = getThemeColorFromCss('themethirdcolor');
								themefourthcolor = getThemeColorFromCss('themefourthcolor');
								themefifthcolor = getThemeColorFromCss('themefifthcolor');

								//--------------------------Visitor Chart --->
								var data = [ {
									color : themeprimary,
									label : "Visits",
									data : [ [ 3, 10 ], [ 4, 13 ], [ 5, 12 ],
											[ 6, 16 ], [ 7, 19 ], [ 8, 19 ],
											[ 9, 24 ], [ 10, 19 ], [ 11, 18 ],
											[ 12, 21 ], [ 13, 17 ], [ 14, 14 ],
											[ 15, 12 ], [ 16, 14 ], [ 17, 15 ] ]
								} ];
								var options = {
									series : {
										lines : {
											show : true,
											fill : true,
											fillColor : {
												colors : [ {
													opacity : 0.2
												}, {
													opacity : 0
												} ]
											}
										},
										points : {
											show : true
										}
									},
									legend : {
										show : false
									},
									xaxis : {
										tickDecimals : 0,
										tickLength : 0,
										color : '#ccc'
									},
									yaxis : {
										min : 0,
										tickLength : 0,
										color : '#ccc'
									},
									grid : {
										hoverable : true,
										clickable : false,
										borderWidth : 0,
										aboveData : false,
										color : '#fbfbfb'

									},
									tooltip : true
								};
								var placeholder = $("#visit-chart");
								var plot = $.plot(placeholder, data, options);
							});
		</script>
</body>
<!--  /Body -->
</html>
