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

<div class="left_content">
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

    <div class="calendar_box" style="margin: 0 auto;">
        <div class="calendar_box_content">
            <h1>Welcome to the Quiz Application System</h1>
            <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()">
                <B>Assess Yourself by taking quizzes on various subjects</B>
            </marquee>
            <p>
                <font style="color: navy;">Now Teacher and Student can work together<br> Online Tutors are most welcomed to my site. <br> They can create Quiz simply by clicking Make<br> Quiz link. And Students can appear in quizzes based on various subjects. </font>
            </p>
        </div>
    </div>
</div>
<!--end of left content-->

<div id="footer">
    
</div>
</body>
</html>
