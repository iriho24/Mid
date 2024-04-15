<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<%! static int count = 0; %>
<%! static int count1 = 0; %>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_application", "root", "london");
    
    if (count == 0) {
        PreparedStatement ps1 = con.prepareStatement("SELECT MIN(qid) FROM quizques");
        PreparedStatement ps2 = con.prepareStatement("SELECT MAX(qid) FROM quizques");
        ResultSet rs1 = ps1.executeQuery();
        ResultSet rs2 = ps2.executeQuery();
        
        if (rs2.next()) {
            count1 = rs2.getInt(1);
            session.setAttribute("max", count1);
        }
        if (rs1.next()) {
            count = rs1.getInt(1);
            session.setAttribute("min", count);
        }
    }
    
    if (count > 0) {
        PreparedStatement ps = con.prepareStatement("SELECT question, option1, option2, option3, option4 FROM quizques WHERE qid=?");
        ps.setInt(1, count);
        ResultSet rs = ps.executeQuery();
        
        while (rs.next()) {
            String question = rs.getString(1);
            String option1 = rs.getString(2);
            String option2 = rs.getString(3);
            String option3 = rs.getString(4);
            String option4 = rs.getString(5);
            
            session.setAttribute("question", question);
            session.setAttribute("option1", option1);
            session.setAttribute("option2", option2);
            session.setAttribute("option3", option3);
            session.setAttribute("option4", option4);
        }
    }
    
    count++;
    session.setAttribute("count", count);
    
    if (count > (Integer) session.getAttribute("max")) {
        count = 0;
        session.setAttribute("ans", null);
    }
    
    con.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
<jsp:forward page="start.jsp"></jsp:forward>
