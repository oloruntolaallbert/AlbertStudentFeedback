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
            <a class="navbar-brand" href="./index" style="color:#FFFFFF">Student Feedback System</a>


        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <li style="color:#FFFFFF">
                    <a style="color:#FFFFFF" href="./index"><i class="fa fa-home fa-fw"></i>Home</a>
                </li>

                <li style="color:#FFFFFF">
                    <a style="color:#FFFFFF" href="./index?info=about"><i class="fa fa-home fa-fw"></i>About</a>
                </li>

                <li><a style="color:#FFFFFF" href="./index?info=registration"><i class="fa fa-sign-out fa-fw"></i>Registration</a></li>

                <li class="dropdown">
                    <a style="color:#FFFFFF" href="#" class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-sign-in fa-fw"></i>Login
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a href="./index?info=login">Student</a></li>
                        <li><a href="./index?info=faculty_login">Lecturer</a></li>
                        <li><a href="admin">Admin</a></li>
                    </ul>
                </li>
                <li>
                    <a style="color:#FFFFFF" href="./index?info=contact"><i class="fa fa-phone fa-fw"></i>Contact</a>
                </li>




            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>