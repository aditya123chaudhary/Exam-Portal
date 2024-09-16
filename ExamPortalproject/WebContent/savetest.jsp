<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.questions.Questions"%>
<%@page import="java.util.HashMap"%>
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
    //HttpSession session2= request.getSession();
    HashMap<Integer, Questions> questionMap = (HashMap)session.getAttribute("questionMap");
   // System.out.println("in ");
    int questionId = Integer.parseInt(request.getParameter("qId"));
    //int selectedOption = (int) sessi.getAttribute("selectedOption");
    String selectedOption = request.getParameter("selectedOption");
    String selectedOpt[] = (String[])session.getAttribute("selectOpt");
    selectedOpt[questionId] = selectedOption;
    session.setAttribute("selectopt", selectedOpt);
    // Get the current question based on the questionId
    
    Questions currentQuestion = questionMap.get(questionId);
    
    // Handle actions (next, previous, submit) here
    String action = request.getParameter("action");
    
    if ("next".equals(action)) {
    	session.setAttribute("questionId", questionId + 1);// Move to the next question
    } else if ("previous".equals(action)) {
    	session.setAttribute("questionId", questionId - 1); // Move to the previous question
    } else if ("submit".equals(action)) {
    	 RequestDispatcher dispatcher = request.getRequestDispatcher("totalmarks.jsp");
         dispatcher.forward(request, response);
    }

  
    // Update the session with the new questionId
    //session.setAttribute("questionId", questionId);

    // Get the updated question based on the new questionId
    //Questions updatedQuestion = questionMap.get(questionId);
%>
  <jsp:include page="test.jsp"></jsp:include>
</body>
</html>