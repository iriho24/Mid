<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<%! static int totalScore = 0; %>

<%
if (session.getAttribute("count") != null) {
    int questionCount = (Integer) session.getAttribute("count");
    String userAnswer = (String) session.getAttribute("ans");
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_application", "root", "london");
        
        PreparedStatement ps = con.prepareStatement("SELECT answer FROM quizques WHERE qid=?");
        ps.setInt(1, questionCount - 1);
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {
            String correctAnswer = rs.getString("answer");
            if (correctAnswer.equals(userAnswer)) {
                totalScore++;
            }
        }
        
        con.close();
        
        if (questionCount > (Integer) session.getAttribute("max")) {
            Integer maxQuestionCount = (Integer) session.getAttribute("max");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_application", "root", "london");
            ps = con.prepareStatement("SELECT answer FROM quizques WHERE qid=?");
            ps.setInt(1, maxQuestionCount);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                String lastQuestionAnswer = rs.getString("answer");
                if (lastQuestionAnswer.equals(userAnswer)) {
                    totalScore++;
                }
            }
            con.close();
            request.setAttribute("totalScore", totalScore);
            totalScore = 0;
            %>
            <jsp:forward page="result.jsp"></jsp:forward>
            <%
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>
<jsp:forward page="get.jsp"></jsp:forward>
