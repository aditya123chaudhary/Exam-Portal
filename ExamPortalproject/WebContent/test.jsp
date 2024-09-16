<%@page import="java.util.HashMap"%>
<%@page import="com.questions.Questions"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
  
    <title>New User Registration Page</title>
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
            
                            <div class="dropdown-menu dropdown-settings">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img src="assets/img/64-64.jpg" alt="" class="img-rounded" />
                                    </a>
                            </div>
                            </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Test</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                        </div>
                        <div class="panel-body">
                        <%
   							  int qId = (int)session.getAttribute("questionId");
    						  HashMap<Integer, Questions> al =(HashMap) session.getAttribute("questionMap");
   							  Questions q = al.get(qId);
     
						%>
                        
   <form action="savetest.jsp" method="post">
  <input type="hidden" name="qId" value="<%= qId %>" />
   <h4>Question No : <%= qId+1 %></h4>
    <h2 class="form-group"><%= q.getQuestion() %></h2>
     <label>
        <input type="radio" name="selectedOption" value="1"  /> <%=q.getOptions()[0] %>
    </label><br>
    <label>
        <input type="radio" name="selectedOption" value="2" /> <%= q.getOptions()[1] %>
    </label><br>
    <label>
        <input type="radio" name="selectedOption" value="3"  /> <%= q.getOptions()[2] %>
    </label><br>
    <label>
        <input type="radio" name="selectedOption" value="4"  /> <%= q.getOptions()[3] %>
    </label><br>
    <input type="hidden" name="marks" value="<%= q.getMarks() %>" />
    
 <button type="submit" name="action" class="btn btn-default" value="previous" <%= (qId == 0 ? "disabled" : "") %>>Previous</button>
    <% if (qId == al.size()-1) { %>
        <button type="submit" name="action" class="btn btn-default" value="submit">Submit</button>
    <% } else { %>
        <button type="submit" name="action" class="btn btn-default" value="next">Next</button>
    <% } %>
  </form>
</div>
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
                    &copy; 2015 YourCompany | By : <a href="http://www.designbootstrap.com/" target="_blank">DesignBootstrap</a>
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
