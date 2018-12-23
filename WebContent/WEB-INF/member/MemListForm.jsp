<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="description" content="data tables">
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

<!--Page Related styles-->
<link href="assets/css/dataTables.bootstrap.css" rel="stylesheet">

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="assets/js/skins.min.js"></script>

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
<title>Admin</title>
</head>

<body>
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<a class="btn btn-link" type="submit">Profile</a> <a
			class="btn btn-link" type="submit">Board</a> <a class="btn btn-link"
			type="button">Admin</a>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>User Profile</h1>
		</div>
		<!-- Pagebody -->
		<div id="page-body"
			style="margin-left: auto; margin-right: auto; margin-top: 20px; width: 98%;">
			<div class="widget-body">
				<div class="table-toolbar">
				<form action="AdminMemJoinForm.do" method="post">
				<button type="submit" class="btn btn-default">Add New User</button>
				</form>
				</div>

				<div id="editabledatatable_wrapper"
					class="dataTables_wrapper form-inline no-footer">
					<div class="DTTT btn-group">
						<a class="btn btn-default DTTT_button_print"
							id="ToolTables_editabledatatable_1" title="View print view"
							tabindex="0" aria-controls="editabledatatable"><span>Print</span></a><a
							class="btn btn-default DTTT_button_collection"
							id="ToolTables_editabledatatable_2" tabindex="0"
							aria-controls="editabledatatable"><span>Save <i
								class="fa fa-angle-down"></i></span></a>
					</div>
					<div id="editabledatatable_filter" class="dataTables_filter">
						<label><input type="search" class="form-control input-sm"
							placeholder="회원ID" aria-controls="editabledatatable"></label>
					</div>
					<div class="dataTables_length" id="editabledatatable_length">
						<label><select name="editabledatatable_length"
							aria-controls="editabledatatable" class="form-control input-sm"><option
									value="5">5</option>
								<option value="15">15</option>
								<option value="20">20</option>
								<option value="100">100</option>
								<option value="-1">All</option></select></label>
					</div>

					<table
						class="table table-striped table-hover table-bordered dataTable no-footer"
						id="editabledatatable" role="grid"
						aria-describedby="editabledatatable_info">
						<thead>
							<tr role="row">
								<th class="sorting_asc" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-sort="ascending"
									aria-label="
                                                    Username
                                                : activate to sort column descending">ID</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Full Name
                                                : activate to sort column ascending">PWD</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Points
                                                : activate to sort column ascending">Name</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">BirthYY</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">BirthMM</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">BirthDD</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Mail1</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Mail2</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Phone1</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Phone2</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Address</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Zipcode</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">RegDate</th>
								<th class="sorting" tabindex="0"
									aria-controls="editabledatatable" rowspan="1" colspan="1"
									aria-label="
                                                    Notes
                                                : activate to sort column ascending">Auth</th>
								<th class="sorting_disabled" rowspan="1" colspan="1"
									aria-label=""></th>

							</tr>
						</thead>

						<c:forEach items="${memberList}" var="member" varStatus="status">
							<tr role="row" class="odd">
								<td class="center">${member.id}</td>
								<td class="center">${member.password}</td>
								<td class="center">${member.name}</td>
								<td class="center">${member.birthyy}</td>
								<td class="center">${member.birthmm}</td>
								<td class="center">${member.birthdd}</td>
								<td class="center">${member.mail1}</td>
								<td class="center">${member.mail2}</td>
								<td class="center">${member.phone1}</td>
								<td class="center">${member.phone2}</td>
								<td class="center">${member.address}</td>
								<td class="center">${member.zipcode}</td>
								<td class="center">${member.regdate}</td>
								<td class="center">${member.auth}</td>
								<td>
									<form action="MemDeleteAction.do" method="post">
										<a class="btn btn-info btn-xs edit"> <i class="fa fa-edit"></i>
											Edit
										</a>
									</form>
									<form>
										<a class="btn btn-danger btn-xs delete"><i
											class="fa fa-trash-o"></i> Delete</a>
									</form>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="row DTTTFooter">
						<div class="col-sm-6">
							<div class="dataTables_paginate paging_bootstrap"
								id="editabledatatable_paginate">
								<ul class="pagination">
									<li class="prev disabled"><a href="#">Prev</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li class="next"><a href="#">Next</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>