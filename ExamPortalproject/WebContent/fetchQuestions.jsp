<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="com.questions.Questions" %>
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
HashMap<Integer, Questions> questionMap = new HashMap<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal", "root", "55555");
        PreparedStatement ps = c.prepareStatement("SELECT * FROM addquestions");
        ResultSet rs = ps.executeQuery();
        int key = 0;
        while (rs.next()) {
            int questionId = rs.getInt("id");
            String questionText = rs.getString("question");
            String[] options = new String[4];
            options[0] = rs.getString("option1");
            options[1] = rs.getString("option2");
            options[2] = rs.getString("option3");
            options[3] = rs.getString("option4");
            int correctans = rs.getInt("correctans");
            int marks = rs.getInt("marks");

            Questions question = new Questions(questionId, questionText, options, correctans, marks);
            questionMap.put(key, question);
            key++;
        }
        String selectedOptions[] = new String[questionMap.size()];
        session.setAttribute("selectOpt", selectedOptions);
        session.setAttribute("questionMap", questionMap);
        session.setAttribute("questionId", 0);

    } catch (Exception e) {
        e.printStackTrace();
    }
   // int questionId = 0; // Set the initial question ID
   // int selectedOption = -1; // no selected option
   // Questions ques = questionMap.get(questionId);
   
   // for (HashMap.Entry<Integer, Questions> entry : questionMap.entrySet()) {
    //    int mapQuestionId = entry.getKey();
     //   Questions mapQuestion = entry.getValue();
%>
  <jsp:include page="test.jsp"></jsp:include>

</body>
</html>