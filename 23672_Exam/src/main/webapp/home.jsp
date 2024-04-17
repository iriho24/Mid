<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>

<jsp:include page="header.jsp"></jsp:include>

<%
String islogin = (String) session.getAttribute("islogin");
if (islogin == null) {
    request.setAttribute("notlogin_msg", "Sorry, Please do Login first");
%>
    <jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>

<div class="">
    <% 
        if (request.getAttribute("notlogin_msg") != null) {
            out.print("<font size='2' color='red' m>");
            out.print(request.getAttribute("notlogin_msg"));
            out.print("</font>");
        }
    %>
    <%
        if (request.getAttribute("Error") != null) {
            out.print("<font size='2' color='red' >");
            out.print(request.getAttribute("Error"));
            out.print("</font>");
        }
    %>
    <%
        if (request.getAttribute("finished") != null) {
            out.print("<font size='2' color='navy'>");
            out.print("<B>");
            out.print(request.getAttribute("finished"));
            out.print("<B>");
            out.print("</font>");
        }
        if (request.getAttribute("category") != null) {
            out.print("<font size='2' color='red' m>");
            out.print(request.getAttribute("category"));
            out.print("</font>");
        }
    %>

  <div style="position: absolute; width: 60%; margin: 0 20%; height: 400px; background-color: white; padding: 20px; border-radius: 10px">
    <div>
        <h1 style="text-align: center; margin: 10px 0;">Welcome to the Quiz Application System</h1>
        <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()">
            <strong>Engage in Self-Assessment with Our Variety of Quizzes</strong>
        </marquee>
          <ul style="margin: 0 10% 20% 30%; font-size: 25px; line-height: 50px; color: navy;">
            <li>Our platform encourages collaboration between teachers and students.</li>
            <li>Online tutors are invited to join and contribute.</li>
            <li>Teachers can easily create quizzes with our intuitive interface.</li>
            <li>Students can explore quizzes across diverse subjects.</li>
        </ul>
    </div>
</div>


</div>
<!--end of left content-->

<div id="footer">
    
</div>
</body>
</html>
