<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>Login Form</title>
<link rel="stylesheet" type="text/css" href="styleindex.css"/>
<style>
    /* Styles for cookie policy modal */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        bottom: 50px; /* Adjusted from 0 to 50px */
        width: 100%;
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4);
        padding-top: 60px;
    }

    .modal-content {
        background-color: #fefefe;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    }

    .modal-content p {
        margin-bottom: 20px;
    }

    .modal-content button {
        padding: 10px 20px;
        margin-right: 10px;
        cursor: pointer;
        background-color: #4CAF50; /* Green background */
        color: white;
        border: none;
    }

    .modal-content button:hover {
        background-color: #45a049; /* Darker green on hover */
    }
</style>
</head>
<body>

  
<div id="main_container">
    <div class="main_content">
        <div id="header"></div>
        <div class="top_center_box"></div>
        <div class="center_box">

    
            <div id="menu_tab">                                     
                    <ul class="menu">                                                                               
                         <li><a href="home.jsp" class="nav">Home</a></li>
                         <li class="divider"></li>
                         <li><a href="takequiz.jsp" class="nav">Take Quiz</a></li>
                         <li class="divider"></li>
                         <li><a href="makequiz.jsp" class="nav">Make quiz</a></li>
                         <li class="divider"></li>
                         <li><a href="register.jsp" class="nav">Register</a></li> 	
                    </ul>
            </div> 
          
                
            
            <div class="middle_box">
            
                <div class="middle_box_text_content">
                    <div class="middle_box_title"></div>
                    <p class="middle_text"></p>
                </div>
            
            
            </div>
           
            
            <div class="left_content">
             <% 
                    if(request.getAttribute("notlogin_msg")!=null){
                    out.print("<font size='2' color='red' m>");
                    out.print(request.getAttribute("notlogin_msg"));
                    out.print("</font>");
                    }
                    %>
                <% 
                    if(request.getAttribute("Error")!=null){
                    out.print("<font size='2' color='red' m>");
                    out.print(request.getAttribute("Error"));
                    out.print("</font>");
                    }
                    
                    
                    %>
                <div class="calendar_box">
                
                    <div class="calendar_box_content">
               
                        <h4>Welcome to the Quiz Application System</h4><br />
                         
                        <form method="post" action="loginprocess.jsp" >
                    <table>
                    <tr><td style="color:navy;"><b> Login Form</b></td></tr>
                    <tr><td>Category:</td><td><select name="category">
                    <option>Select a Category</option>
                    <option>Teacher</option>
                    <option>Student</option>
                    </select>
                    </td></tr>
                    <tr><td>User Name:</td><td><input type="text" name="username" /></td></tr>
                                
                    <tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>    
                        
                    <tr><td></td><td><input type="submit" value="Sign in"/> <a href="register.jsp">Register</a></td></tr>
                    </table>
                     </form>


                    
                    </div>
                </div>
                
          
            
            
            </div>
            <!--end of left content-->



    <div id="footer">
    
    </div>

    <!-- Cookie policy modal -->
    <div id="cookieModal" class="modal">
        <div class="modal-content">
            <p>This website uses cookies to ensure you get the best experience on our website.</p>
            <button id="acceptCookiesBtn">Accept</button>
            <button id="rejectCookiesBtn">Reject</button>
        </div>
    </div>

</div> <!--end of center box-->
</div> <!--end of main content-->
</div> <!--end of main container-->

<script>
    // JavaScript to handle cookie policy modal
    document.addEventListener("DOMContentLoaded", function() {
        var modal = document.getElementById('cookieModal');
        var acceptBtn = document.getElementById('acceptCookiesBtn');
        var rejectBtn = document.getElementById('rejectCookiesBtn');

        // Show the cookie policy modal
        modal.style.display = "block";

        // Handle Accept button click
        acceptBtn.onclick = function() {
            modal.style.display = "none";
            // Set cookie to indicate user accepted cookies
            document.cookie = "cookiesAccepted=true; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";
        };

        // Handle Reject button click
        rejectBtn.onclick = function() {
            modal.style.display = "none";
            // Handle rejection, e.g., disable certain features or provide alternative functionality
        };
    });
</script>

</body></html>
