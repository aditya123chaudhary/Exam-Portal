<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Login/Registration</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <strong>Email: </strong>adityanotsingh@gmail.com
                    &nbsp;&nbsp;
                    <strong>Support: </strong>+91 69-96-69
                </div>

            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">

                    <img width="" height="" src="assets/img/logo.png" />
                </a>

            </div>

            <div class="left-div">
                <i class="fa fa-user-plus login-icon" ></i>
        </div>
            </div>
        </div>
    <!-- LOGO HEADER END-->
   
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please Login / Register to Enter </h4>

                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                   <h4> Login with facebook <strong> / </strong>Google :</h4>
                    <br />
                    <a href="" class="btn btn-social btn-facebook">
                            <i class="fa fa-facebook"></i>&nbsp; Instagram Account</a>
                    &nbsp;OR&nbsp;
                    <a href="" class="btn btn-social btn-google">
                            <i class="fa fa-google-plus"></i>&nbsp; Google Account</a>
                    <hr />
                     <h4> Or Login with <strong>Your Account :</strong></h4>
                    <br />
                    <form action="logincheck.jsp" method="post">
                     <label>Enter Email : </label>
                        <input type="text" class="form-control" name="email"/>
                        <label>Enter Mobile No :  </label>
                        <input type="password" class="form-control" name="mobileno"/>
                        <hr />
                        <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Login &nbsp;<br>
                        </button>
                        </form><br>
                        <a href="newuser.jsp" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;New User </a>&nbsp;
                 <% 
       				 String v = (String) session.getAttribute("Valid");
       				 if (v != null && v.equals("true")) {
   				 %>
  					  <h2 style="color: red; text-align: center;">Invalid User !!</h2>
   				 <%
   				   }
  				  %> 
                </div> 
                <div class="col-md-6">
                    <div class="alert alert-info">
                        This is a free exam portal for JAVA practice questions for interview purpose.
                        <br />
                         <strong> Some of its features are given below :</strong>
                        <ul>
                            <li>
                                Responsive Design for better readability across all platforms.
                            </li>
                            <li>
                                Easy to use. 
                            </li>
                        </ul>
                       
                    </div>
                    <div class="alert alert-success">
                         <strong> Instructions To Use:</strong>
                        <ul>
                            <li>
                               There will be 10 industry level questions.
                            </li>
                            <li>
                                 Each question is of 10 marks and 1 min time for each question.
                            </li>
                            <li>
                                 No negative marking.
                            </li>
                        </ul>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer style="text-align: center;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    &copy;  ADITYA | By : <a href="" target="_blank">Adi_Aditya.pvt.ltd</a>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
