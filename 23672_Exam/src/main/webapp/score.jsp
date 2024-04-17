<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<%
String username = (String) request.getAttribute("username");
int totalUserMarks = (int) request.getAttribute("totalUserMarks");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizz_application", "root", "london");

    // Insert the user's score into the database
    PreparedStatement ps = con.prepareStatement("INSERT INTO user_scores (username, score, date) VALUES (?, ?, NOW())");
    ps.setString(1, username);
    ps.setInt(2, totalUserMarks);
    int rowsAffected = ps.executeUpdate();

    // Check if the insertion was successful
    if (rowsAffected > 0) {
        // Score inserted successfully
        // You can add further logic here if needed
    } else {
        // Score insertion failed
        // You can handle this case accordingly
    }

    con.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
<jsp:forward page="result.jsp"></jsp:forward>
