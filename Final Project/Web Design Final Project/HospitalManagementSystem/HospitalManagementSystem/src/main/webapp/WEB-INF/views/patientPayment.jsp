<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Patient Dashboard</title>
<style>
</style>
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
<link href="resources/assets/css/font-awesome.css" rel="stylesheet" />
<link href="resources/assets/css/custom-styles.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/imagehover.min.css">
<script src="resources/assets/js/jquery-1.10.2.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/pricecss.css">
<style>
#wrapper {
	background: linear-gradient(to right, #1CBDB6, #34BCE6);
	background-repeat: none;
}

.glyphicon {
	font-size: 65px;
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

#apppintmentForm {
	display: none;
}

#viewDetails {
	display: none;
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
				<a class="navbar-brand" href="index.html">Patient</a>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<a class="text-warning" style="color: white">Hello
					${user.firstName}</a>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw inverse"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="patientProfile.htm"><i class="fa fa-user fa-fw"></i>
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
                <ul class="nav" id="main-menu" style="font-size:1.4em; padding-left:0.5em">

                    <li>
                        <a class="grow" href="patientHome.htm" style="color:black;"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="patientDoctors.htm" class="grow" style="color:black;"><i class="fa fa-user-md"></i> Doctor</a>
                    </li>

                    <li>
                        <a href="#" class="grow" style="color:black;" onclick="myFunction();"><i class="fa fa-file-text-o"></i> Book Appointment</a>
                    </li>
                    <li>
                        <a href="viewBill.htm" style="color:black;" class="grow"><i class="fa fa-user"></i> View Bill</a>
                    </li>
                     <li>
                        <a href="donateBlood.htm" style="color:black;" class="grow"><i class="fa fa-tint"></i> Donate Blood</a>
                    </li>
                     <li>
                        <a href="patientRegisterEvent.htm" class="grow" style="color:black;"><i class="fa fa-calendar"></i> Register Event</a>
                    </li>
                </ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">



				<div class="container group">
					<c:forEach items="${billHistory}" var="bill">
						<div class="grid-1-5">

							<h2>${bill.prescriptionId}</h2>
							<h3>
								<span class="uppercase">${bill.totalAmount}</span>
							</h3>
							<p>Dr. ${bill.doctorName}</p>
							<ul>
								<li>${bill.tax}</li>
								<li>${bill.consultationFees}</li>
								<li>${bill.discount}</li>
							</ul>
							<a rel="nofollow" rel="noreferrer" href="viewPdfBill.htm?billId=${bill.prescriptionId}" target = "_blank" class="button">Download
								Bill</a>
						</div>
					</c:forEach>
				</div>

				<script src="resources/assets/js/morris/raphael-2.1.0.min.js"></script>
				<script src="resources/assets/js/morris/morris.js"></script>

				<script src="resources/assets/js/dataTables/jquery.dataTables.js"></script>
				<script src="resources/assets/js/dataTables/dataTables.bootstrap.js"></script>
				<script>
					$(document).ready(function() {
						$('#dataTables-example').dataTable();
					});
				</script>

				<script>
					function myFunction() {
						var x = document.getElementById('apppintmentForm');
						var y = document.getElementById('appointmentTable');
						if (x.style.display === 'none') {

							y.style.display = 'none';

						} else {

							x.style.display = 'block';
							y.style.display = 'none';
						}

					}
				</script>
				<script>
					function detailsFunc() {
						var x = document.getElementById('viewDetails');
						var y = document.getElementById('appointmentTable');
						if (x.style.display === 'none') {

							y.style.display = 'none';

						} else {

							x.style.display = 'block';
							y.style.display = 'none';
						}

					}
				</script>
</body>
</html>
