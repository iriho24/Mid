<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<% 
try {
    String subject = request.getParameter("subject");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_application", "root", "london");
    PreparedStatement ps = con.prepareStatement("INSERT INTO quizinfo(subject) VALUES (?)");
    ps.setString(1, subject);
    int rowsAffected = ps.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
}
%>

<jsp:forward page="createquiz1.jsp"></jsp:forward>
