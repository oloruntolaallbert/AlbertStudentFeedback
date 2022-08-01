<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
session_start();
require('dbconfig.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Student Feedback </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background:blue">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php" style="color:#FFFFFF">Student Feedback System</a>


            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">

                    <li style="color:#FFFFFF">
                        <a style="color:#FFFFFF" href="index.php"><i class="fa fa-home fa-fw"></i>Home</a>
                    </li>

                    <li style="color:#FFFFFF">
                        <a style="color:#FFFFFF" href="index.php?info=about"><i class="fa fa-home fa-fw"></i>About</a>
                    </li>

                    <li><a style="color:#FFFFFF" href="index.php?info=registration"><i class="fa fa-sign-out fa-fw"></i>Registration</a></li>

                    <li class="dropdown">
                        <a style="color:#FFFFFF" href="#" class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-sign-in fa-fw"></i>Login
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">

                            <li><a href="index.php?info=login">Student</a></li>
                            <li><a href="index.php?info=faculty_login">Lecturer</a></li>
                            <li><a href="admin">Admin</a></li>
                        </ul>
                    </li>
                    <li>
                        <a style="color:#FFFFFF" href="index.php?info=contact"><i class="fa fa-phone fa-fw"></i>Contact</a>
                    </li>




                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <?php
    @$info = $_GET['info'];
    if ($info != "") {

        if ($info == "about") {
            include('about.php');
        } else if ($info == "contact") {
            include('contact.php');
        } else if ($info == "login") {
            include('login.php');
        } else if ($info == "faculty_login") {
            include('faculty_login.php');
        } else if ($info == "registration") {
            include('registration.php');
        }
    } else {
    ?>
        <!-- slider start -->
        <!-- The carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" style="min-height:150%; min-width:100%; overflow: hidden;">
                <div class="item active" style="height:100%; width:100%">

                    <div class="fill" style="background-image:url('images/emblem.png'); ;"></div>
                    <div class="carousel-caption">

                    </div>
                </div>

                <div class="item">
                    <div class="fill" style="background-image:url('images/slide-1a.jpg')"></div>
                    <div class="carousel-caption">

                    </div>
                </div>

                <div class="item">
                    <div class="fill" style="background-image:url('images/school.webp'); width: 100%;"></div>
                    <div class="carousel-caption">

                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="icon-next"></span>
                </a>
        </header>
        <!-- slider -->


        <!-- Page Content -->
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="col-sm-10" style="margin-top:160px;margin-bottom:80px">
                        <h2>Student Feedback Management System</h2>
                        <p style="text-align: justify"> The main purpose of this project is to provide a real-time solution
                            for students to provide feedback on a specific lecture. This is possible through the most
                            realistic implementation
                            of an online student feedback management system. This feedback system is implemented with an
                            emphasis on lowering costs and components while supporting various web platforms to increase
                            scalability. The necessity of the proposed system is as follows: </p>
                        <ul>
                            <li>Learning is improved through feedback </li>
                            <li>Improves Efficiency in teaching </li>
                            <li>Feedback encourages reflection</li>
                            <li>Feedback is clear and focuses on improvement strategies</li>
                            <li>A computerized feedback system decreases the use of paper and labor work</li>
                        </ul>

                        <strong> System Modules </strong>

                        <p>
                        <ul>
                            <li> Admin Module </li>
                            <li> Student Module </li>
                            <li> Lecturer Module </li>
                            </p>

                    </div>




                <?php } ?>
                </div>

            </div>
            <!-- /.container -->

            <div class="navbar-fixed-bottom nav navbar-inverse text-center" style="padding:15px;height:40px; background:blue">
                <span style="color:#FFFFFF">&copy; CO4804 MSc Project - 2022 </span>
            </div>
            <!-- jQuery -->
            <script src="css/jquery.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="css/bootstrap.min.js"></script>

            <!-- Script to Activate the Carousel -->
            <script>
                $('.carousel').carousel({
                    interval: 5000 //changes the speed
                })
            </script>

</body>

</html>