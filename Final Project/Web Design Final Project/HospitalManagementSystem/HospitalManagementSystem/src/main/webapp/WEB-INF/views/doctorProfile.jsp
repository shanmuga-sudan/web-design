<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Doctor Dashboard</title>

<link href="resources/doctorAssets/css/bootstrap.css" rel="stylesheet" />

<link href="resources/doctorAssets/css/font-awesome.css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="resources/doctorAssets/css/imagehover.min.css">


<link href="resources/doctorAssets/css/custom-styles.css"
	rel="stylesheet" />
<script src="resources/doctorAssets/js/jquery-1.10.2.js"></script>
<script src="resources/doctorAssets/js/bootstrap.min.js"></script>

<style>
#wrapper {
	background: linear-gradient(to right, #A1ECFF, #0170E3, black);
	background-repeat: none;
}

.navbar-default {
	background: none;
	background-repeat: none;
}

.navbar-brand {
	background: none;
	background-repeat: none;
}

#page-inner {
	
}

#page-wrapper {
	background: none;
	background-repeat: none;
}

.navbar-header {
	background: none;
}

.grow {
	transition: all .2s ease-in-out;
}

.grow:hover {
	transform: scale(1.1);
}

.switch {
	position: relative;
	display: inline-block;
	width: 50px;
	height: 21px;
}

.switch input {
	display: none;
}

.switch {
	position: relative;
	display: inline-block;
	width: 50px;
	height: 21px;
}

.switch input {
	display: none;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: red;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 12px;
	width: 12px;
	left: 5px;
	bottom: 5px;
	background-color: white;
	-webkit-transition: .2s;
	transition: .4s;
}

input:checked+.slider {
	background-color: green;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}
/* Rounded sliders */
.slider.round {
	border-radius: 20px;
}

.slider.round:before {
	border-radius: 50%;
}

#leftPanel {
	background-color: #0079ac;
	color: #fff;
	text-align: center;
}

#rightPanel {
	min-height: 415px;
}

/* Credit to bootsnipp.com for the css for the color graph */
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>


</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"></a>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<a class="text-warning" style="color: white; text-decoration: none;">Hello
					${user.firstName}</a>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw inverse"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i>
								${user.firstName} ${user.lastName}</a></li>

						<li class="divider"></li>
						<li><a href="logout.htm"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu"
					style="font-size: 1.4em; padding-left: 0.5em">

					<li><a class="grow" href="doctorHome.htm"
						style="color: black;"><i class="fa fa-dashboard"></i>
							Dashboard</a></li>
					<li><a href="#" class="grow" style="color: black;"><i
							class="fa fa-user-md"></i> User Profile</a></li>
					<li><a href="assignedPatient.htm" class="grow"
						style="color: black;"><i class="fa fa-user"></i> Patient</a></li>
					<li><a href="hospitalGallery.htm" class="grow"
						style="color: black;"><i class="fa fa-user"></i> Gallery</a></li>

					<li><a href="doctorDiseases.htm" class="grow"
						style="color: black;"><i class="fa fa-users"></i> Diseases</a></li>
						                    <li>
                        <a href="BloodDonor.htm" style="color:black;" class="grow"><i class="fa fa-tint"></i>Blood Donor</a>
                    </li>

				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header"
							style="color: black; margin: 0px; padding: 0px">
							<strong>Doctor Dashboard</strong>
						</h1>
					</div>
				</div>
				<!-- /. ROW  -->

				<!--         <div class = "container">-->
				<div class="row">

					<div class="col-lg-12">
						<iframe
							src="https://www.meteoblue.com/en/weather/widget/three?geoloc=detect&nocurrent=0&noforecast=0&noforecast=1&days=7&tempunit=FAHRENHEIT&windunit=MILE_PER_HOUR&layout=dark"
							frameborder="0" scrolling="NO" allowtransparency="true"
							sandbox="allow-same-origin allow-scripts allow-popups"
							style="width: 100%; height: 100%"></iframe>
						<div style="display: none">
							<!-- DO NOT REMOVE THIS LINK -->
							<a
								href="https://www.meteoblue.com/en/weather/forecast/week?utm_source=weather_widget&utm_medium=linkus&utm_content=three&utm_campaign=Weather%2BWidget"
								target="_blank">meteoblue</a>
						</div>
						<br> <br> <br> <br>
					</div>
					<!--	</div>-->

					<br> <br>
					<div class="row">
						<div class="col-md-3 col-sm-12 col-xs-12">
							<div
								class="panel panel-primary text-center no-boder bg-color-green grow">
								<div class="panel-body">
									<i class="fa fa-user-md fa-5x"></i>

								</div>
								<div class="panel-footer back-footer-green">Doctor</div>
							</div>
						</div>
						<a href="assignedPatient.htm"><div
								class="col-md-3 col-sm-12 col-xs-12">
								<div
									class="panel panel-primary text-center no-boder bg-color-red grow">
									<div class="panel-body">

										<i class="fa fa-user fa-5x"></i>
									</div>
									<div class="panel-footer back-footer-red">Patient</div>
								</div>
							</div> </a>
						<div class="col-md-3 col-sm-12 col-xs-12">
							<div
								class="panel panel-primary text-center no-boder bg-color-blue grow">
								<div class="panel-body">


									<i class="fa fa-user fa-5x"></i>

								</div>
								<div class="panel-footer back-footer-blue">Receptionist</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-12 col-xs-12">
							<div
								class="panel panel-primary text-center no-boder bg-color-brown grow">
								<div class="panel-body">
									<i class="fa fa-users fa-5x"></i>

								</div>
								<div class="panel-footer back-footer-brown">Departments</div>
							</div>
						</div>
					</div>


					<div class="container" >
					<h1>${profileUpdated}</h1>
						<br> <br>
						<div class="row" id="main" style="margin-right:10%">
							<div class="col-md-4 well" id="leftPanel">
								<div class="row">
									<div class="col-md-12">
										<div>
											<img src="http://lorempixel.com/200/200/abstract/1/"
												alt="Texto Alternativo" class="img-circle img-thumbnail">
											<h2>Dr. ${user.firstName} ${user.lastName}</h2>

											<p>${user.address}</p>
											<p>${user.mobileNUmber}</p>
											<br>
											<br>
											<br>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-8 well" id="rightPanel">
								<div class="row">
									<div class="col-md-12">
										<form role="form" action ="doctorProfileEdit.htm" method = "POST">
											<h2>
												Edit your profile.<small>It's always easy</small>
											</h2>
											<hr class="colorgraph">
											<div class="row">
												<div class="col-xs-12 col-sm-6 col-md-6">
													<div class="form-group">
														<input type="text" name="first_name" value="${user.firstName}" id="first_name"
															class="form-control input-lg" placeholder="First Name"
															tabindex="1">
													</div>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6">
													<div class="form-group">
														<input type="text" name="last_name" value="${user.lastName}" id="last_name"
															class="form-control input-lg" placeholder="Last Name"
															tabindex="2">
													</div>
												</div>
											</div>
											<div class="form-group">
												<input type="text" name="address" id="address" value="${user.address}"
													class="form-control input-lg" placeholder="Address"
													tabindex="4">
											</div>
											<div class="form-group">
												<input type="text" name="mobile" id="address" value="${user.mobileNUmber}"
													class="form-control input-lg" placeholder="Phone"
													tabindex="4">
											</div>
											<div class="row">
												<div class="col-xs-12 col-sm-6 col-md-6">
													<div class="form-group">
														<input type="password" name="password" id="password"
															class="form-control input-lg" required placeholder="Password"
															tabindex="5">
													</div>
												</div>
												<div class="col-xs-12 col-sm-6 col-md-6">
													<div class="form-group">
														<input type="password" name="password_confirmation"
															id="password_confirmation" required class="form-control input-lg"
															placeholder="Confirm Password" tabindex="6">
													</div>
												</div>
											</div>
											<hr class="colorgraph">
											<div class="row">
												<div class="col-xs-12 col-md-6"></div>
												<div class="col-xs-12 col-md-6">
													<button class = "btn btn-success btn-block btn-lg">Save</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<!-- Modal -->
							</div>
						</div>
					</div>
</body>

</html>
