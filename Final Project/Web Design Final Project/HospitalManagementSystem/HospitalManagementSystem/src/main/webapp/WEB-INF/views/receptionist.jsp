<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Receptionist Dashboard</title>

    <link href="resources/adminAssets/css/bootstrap.css" rel="stylesheet" />
    <link href="resources/adminAssets/css/font-awesome.css" rel="stylesheet" />
    <link href="resources/adminAssets/css/custom-styles.css" rel="stylesheet" />
	<link rel="stylesheet" href="resources/adminAssets/css/imagehover.min.css">
    <script src="resources/adminAssets/js/jquery-1.10.2.js"></script>
    <script src="resources/adminAssets/js/bootstrap.min.js"></script>
    <style>
   #wrapper {
            background: linear-gradient(to right, #A1ECFF, #0170E3, black);
            background-repeat: none;
        }
    
    </style>
    
</head>

<body>
    <div id="wrapper" >
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"></a>
            </div>
			
            <ul class="nav navbar-top-links navbar-right">
				<a class="text-warning" style = "color:white">Hello  ${user.firstName}</a>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw inverse"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                    <li><a href="recptionistProfile.htm"><i class="fa fa-user fa-fw"></i> ${user.firstName} ${user.lastName}</a>
                        </li>
                       
                        <li class="divider"></li>
                        <li><a href="logout.htm"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu" style="font-size:1.4em; padding-left:0.5em">

                    <li>
                        <a class="grow" href="index.html" style="color:black;"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="receptionistAllDoctor.htm" class="grow" style="color:black;"><i class="fa fa-user-md"></i> Doctors</a>
                    </li>
                    <li>
                        <a href="receptionistAllPatient.htm" class="grow" style="color:black;"><i class="fa fa-user"></i> Patients</a>
                    </li>
                    <li>
                        <a href="receptionistAppointments.htm" class="grow" style="color:black;"><i class="fa fa-user"></i> Appointments</a>
                    </li>

                    <li>
                        <a href="#" class="grow" style="color:black;"><i class="fa fa-users"></i> Billing</a>
                    </li>

                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header" style="color:black; margin:0px; padding:0px">
                            <strong>Receptionist Dashboard</strong>  
                        </h1>
                    </div>
                </div>
                <!-- /. ROW  -->
                
<!--         <div class = "container">-->
		<div class="row">
		
		<div class="col-lg-12">
			<iframe src="https://www.meteoblue.com/en/weather/widget/three?geoloc=detect&nocurrent=0&noforecast=0&noforecast=1&days=7&tempunit=FAHRENHEIT&windunit=MILE_PER_HOUR&layout=dark"  frameborder="0" scrolling="NO" allowtransparency="true" sandbox="allow-same-origin allow-scripts allow-popups" style="width:100%;height: 100%"></iframe><div style="display:none"><!-- DO NOT REMOVE THIS LINK --><a href="https://www.meteoblue.com/en/weather/forecast/week?utm_source=weather_widget&utm_medium=linkus&utm_content=three&utm_campaign=Weather%2BWidget" target="_blank">meteoblue</a></div>
		<br><br><br><br>
		</div>
		<br>
<!--	</div>-->

                <br><br>
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-green grow">
                            <div class="panel-body">
                                <i class="fa fa-user-md fa-5x"></i>

                            </div>
                            <div class="panel-footer back-footer-green">
                                Doctor
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-red grow">
                            <div class="panel-body">

                                <i class="fa fa-user fa-5x"></i>
                            </div>
                            <div class="panel-footer back-footer-red">
                                Patient

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-blue grow">
                            <div class="panel-body">


                                <i class="fa fa-user fa-5x"></i>

                            </div>
                            <div class="panel-footer back-footer-blue">
                                Receptionist

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-brown grow">
                            <div class="panel-body">
                                <i class="fa fa-users fa-5x"></i>

                            </div>
                            <div class="panel-footer back-footer-brown">
                                Departments

                            </div>
                        </div>
                    </div>
                </div>


                <span><div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="panel panel-default">

                            <div class="panel-body">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#doctor" data-toggle="tab">Doctor</a>
                                    </li>
                                    <li class=""><a href="#patient" data-toggle="tab">Patient</a>
                                    </li>
                                    <li class=""><a href="#receptionist" data-toggle="tab">Receptionist</a>
                                    </li>
                                    <li class=""><a href="#department" data-toggle="tab">Department</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="doctor">
                                        <h4>Create Doctor</h4>
                                        <form class="form-horizontal" action='registerDoctor.htm?action=registerDoctor' method="POST">
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">First Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "fName" id="Name" placeholder="Enter Name">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">Last Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "lName" id="Name" placeholder="Enter Name">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="email">Email Id:</label>
                                                <div class="col-sm-8">
                                                    <input type="email" class="form-control" name = "emailId" id="email" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="phone">Phone Number:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name = "phoneNumber" class="form-control bfh-phone" data-format="+1 (ddd) ddd-dddd" placeholder="Enter Phone Number">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Address">Address:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "address" id="Address" placeholder="Enter Address">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Department">Department:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "department" id="Department" placeholder="Enter Department">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Degree">Degree:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "degree" id="Degree" placeholder="Enter Degree">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Salary">Salary:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "salary" id="Salary" placeholder="Enter Salary">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="pwd">Password:</label>
                                                <div class="col-sm-8">
                                                    <input type="password" class="form-control" name = "password" id="pwd" placeholder="Enter password">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-4 col-sm-8">
                                                    <button type="submit" class="btn btn-success">Create Doctor</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="patient">
                                        <h4>Create Patient</h4>
                                        <form class="form-horizontal" action='registerPatient.htm?action=registerPatient' method="POST">
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">First Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "fName" id="Name" placeholder="Enter Name">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">Last Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "lName" id="Name" placeholder="Enter Name">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="email">Email Id:</label>
                                                <div class="col-sm-8">
                                                    <input type="email" class="form-control" name = "emailId" id="email" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="phone">Phone Number:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name = "phoneNumber" class="form-control bfh-phone" data-format="+1 (ddd) ddd-dddd" placeholder="Enter Phone Number">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Address">Address:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "address" id="Address" placeholder="Enter Address">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="age">Age:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "age" id="age" placeholder="Enter Age">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="pwd">Password:</label>
                                                <div class="col-sm-8">
                                                    <input type="password" class="form-control" name = "password" id="pwd" placeholder="Enter password">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-4 col-sm-8">
                                                    <button type="submit" class="btn btn-success">Create Patient</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="receptionist">
                                        <h4>Create Receptionist</h4>

                                        <form class="form-horizontal" action='registerReceptionist.htm?action=registerReceptionist' method="POST">
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">First Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "fName" id="Name" placeholder="Enter First Name">
                                                </div>
                                            </div>
                                             <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">Last Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "lName" id="Name" placeholder="Enter Last Name">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="email">Email Id:</label>
                                                <div class="col-sm-8">
                                                    <input type="email" class="form-control" name = "emailId" id="email" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="phone">Phone Number:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name = "phoneNumber" class="form-control bfh-phone" data-format="+1 (ddd) ddd-dddd" placeholder="Enter Phone Number">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Address">Address:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name = "address"  class="form-control" id="Address" placeholder="Enter Address">
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Salary">Salary:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name = "salary" id="Salary" placeholder="Enter Salary">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-4" for="pwd">Password:</label>
                                                <div class="col-sm-8">
                                                    <input type="password" class="form-control" name = "password" id="pwd" placeholder="Enter password">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-4 col-sm-8">
                                                    <button type="submit" class="btn btn-success">Create Receptionist</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="tab-pane fade" id="department">
                                        <h4>Create Department</h4>
                                        <form class="form-horizontal">
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="Name">Department Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" id="Name" placeholder="Enter Department Name">
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="phone">Phone Number:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control bfh-phone" data-format="+1 (ddd) ddd-dddd" placeholder="Enter Phone Number">
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label class="control-label col-sm-4" for="hod">H.O.D Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" id="hod" placeholder="Enter H.O.D Name">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-4 col-sm-8">
                                                    <button type="submit" class="btn btn-success">Create Department</button>
                                                </div>
                                            </div>
                                            
                                        </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <span><iframe width="668" height="300" align="right"  style="margin-right: 20px;" src="https://www.youtube.com/embed/t0JUqFrod40" frameborder="0" allowfullscreen></iframe></span>

                </div>
				               
                </span>
               
                
                
            </div>
        </div>
        </div>
</body>

</html>
