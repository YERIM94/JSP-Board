<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
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
<title>Board</title>
</head>
<body>
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<a class="btn btn-link" type="button">Profile</a>
		<form action=".do" method="post">
			<a class="btn btn-link" type="submit">Board</a>
		</form>
		<form action="MemListAction.do" method="post">
			<a class="btn btn-link" type="submit">Admin</a>
		</form>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
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
		<!--Header Buttons End-->
	</div>

	<!-- Page body -->

	<div class="page-body" style="margin-left: auto; margin-right: auto;">
		<div id="simpledatatable_wrapper"
			class="dataTables_wrapper form-inline no-footer"
			style="margin-left: auto; margin-right: auto;">
			<div class="DTTT btn-group">
				<a class="btn btn-default DTTT_button_print"
					id="ToolTables_simpledatatable_4" title="View print view"
					tabindex="0" aria-controls="simpledatatable"><span>Search</span></a>
			</div>
			<div class="DTTT btn-group">
				<form action="BoardWriteFormAction.do" method="post">
					<input type="hidden" name="board_id"
						value="${sessionScope.sessionID}">
					<button class="btn btn-default DTTT_button_print"
						id="ToolTables_simpledatatable_4" type="submit">
						<span>Write</span>
					</button>
				</form>

			</div>
			<div id="simpledatatable_filter" class="dataTables_filter"
				style="margin-top: 10px;">
				<label><input type="search" class="form-control input-sm"
					placeholder="search" aria-controls="simpledatatable"></label>
			</div>
			<div style="margin-top: 5px;">
				<select name="category">
					<option value="volvo">Volvo</option>
					<option value="saab">Saab</option>
					<option value="fiat">Fiat</option>
					<option value="audi">Audi</option>
				</select>
			</div>
			<div class="dataTables_length" id="simpledatatable_length"
				style="margin-top: 5px;">
				<label><select name="simpledatatable_length"
					aria-controls="simpledatatable" class="form-control input-sm"><option
							value="10">10</option>
						<option value="25">25</option>
						<option value="50">50</option>
						<option value="100">100</option></select></label>
			</div>
			<form action="BoardDetailAction.do"  method="post">
				<table
					class="table table-striped table-bordered table-hover dataTable no-footer"
					id="simpledatatable" role="grid"
					aria-describedby="simpledatatable_info">
					<thead>
						<tr role="row">
							<th class="sorting_disabled" tabindex="0"
								aria-controls="simpledatatable" rowspan="1" colspan="1"
								aria-label="Username: activate to sort column ascending"
								style="width: 5%;">#</th>
							<th class="sorting_disabled" rowspan="1" colspan="1"
								aria-label="Email" style="width: 30%;">Subject</th>
							<th class="sorting" tabindex="0" aria-controls="simpledatatable"
								rowspan="1" colspan="1"
								aria-label="Points: activate to sort column ascending"
								style="width: 20%;">ID</th>
							<th class="sorting" tabindex="0" aria-controls="simpledatatable"
								rowspan="1" colspan="1"
								aria-label="Points: activate to sort column ascending"
								style="width: 20%;">Email</th>
							<th class="sorting" tabindex="0" aria-controls="simpledatatable"
								rowspan="1" colspan="1"
								aria-label="Points: activate to sort column ascending"
								style="width: 15%;">Date</th>
							<th class="sorting" tabindex="0" aria-controls="simpledatatable"
								rowspan="1" colspan="1"
								aria-label="Points: activate to sort column ascending"
								style="width: 10%;">Count</th>
						</tr>
					</thead>
					<c:forEach items="${requestScope.boardList}" var="board" varStatus="status">
						<tbody>
							<tr role="row" class="even">
								<td><input type="hidden" value="${board.num}" name="post_num">${board.num}</td>
								<td><button class ="btn btn-link" type="submit">${board.subject}</button> </td>
								<td>${board.id}</td>
								<td><a href="${board.email}">${board.email}</a></td>
								<td>${board.date}</td>
								<td>${board.count}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</form>
			<div class="row DTTTFooter">
				<div class="col-sm-6"></div>
				<div class="col-sm-6">
					<div class="dataTables_paginate paging_bootstrap"
						id="simpledatatable_paginate">
						<ul class="pagination">
							<li class="prev disabled"><a href="#">Prev</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li class="next"><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>