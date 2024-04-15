<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="styleindex.css">
<script src="script.js"></script>
</head>
<body style="background-color: #f4f7f6;">
<div id="main_container">
    <div class="main_content">
        <div id="header"></div>
        <!-- Navigation Menu -->
        <div id="menu_tab">
            <ul class="menu">
                <li><a href="home.jsp" class="nav">Home</a></li>
                <li class="divider"></li>
                <li><a href="takequiz.jsp" class="nav">Take Quiz</a></li>
                <li class="divider"></li>
                <li><a href="makequiz.jsp" class="nav">Make quiz</a></li>
                <li class="divider"></li>
                <li><a href="register.jsp" class="nav">Registration</a></li>
            </ul>
        </div> 

        <!-- Registration Form -->
        <div class="middle_box" style="background-color: #fff; padding: 20px;">
            <div class="middle_box_text_content">
                <div class="middle_box_title">Registration Form</div>
                <form method="post" action="registerprocess.jsp" name="registrationForm">
                    <table>
                        <tr><td style="color:navy;"><b>Registration</b></td></tr>
                        <tr><td>User Name:</td><td><input type="text" name="username" onkeyup="sendInfo()"/></td></tr>
                        <tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>
                        <tr><td>Category:</td><td><select name="category">
                            <option value="">Select a Category</option>
                            <option value="Teacher">Teacher</option>
                            <option value="Student">Student</option>
                        </select></td></tr>
                        <tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
                        <tr><td></td><td><input type="submit" value="Register"/></td></tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
