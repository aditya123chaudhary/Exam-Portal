<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal", "root", "55555");
    PreparedStatement ps = c.prepareStatement("insert into users values(?,?,?,?,?)");
    ps.setInt(1, 0);
    ps.setString(2, request.getParameter("name"));
    ps.setString(3, request.getParameter("email"));
    ps.setString(4, request.getParameter("mobileno"));
    ps.setString(5, request.getParameter("role"));
    int i = ps.executeUpdate();
    if (i != 0) {
        response.sendRedirect("home.jsp");
    } else {
        response.sendRedirect("./");
    }
} catch (Exception e) {
    System.out.println(e);
}
%>
</body>
</html>