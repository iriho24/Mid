<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
<div class="">
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
					if(session.getAttribute("category")!=null){
					String category=(String)session.getAttribute("category");
					if(category.equals("Student")){
					request.setAttribute("category","You are not a Teacher,You can't make Quiz");
					%>
					<jsp:forward page="home.jsp"></jsp:forward>
					<% 
					}
					
					}
					
					
					%>
            	  <div class="" style="width: 50%; margin: 0 auto; height: 540px; background-color: white; padding: 10px; border-radius: 10px;">
            	
                	<div class="">
               
                	  <h1 style="text-align:center; margin: 10px 0; ">Welcome to the Quiz Application System</h1>
                	 <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by making quizzes on various subjects</B></marquee>
                		   
                		<form method="post" action="createquiz.jsp" style="margin-top: 30px; display: flex; justify-content: center;">

					<table>
					<tr><td>Subject<br></td><td><input type="text" name="subject" style="width:50%; padding:10px; margin:15px 0" /></td></tr>
				
                    <tr><td></td><td><input type="submit" value="Create"></td>
                     	</table>
                     </form>


                    
                	</div>
                </div>
            
            
            </div>
            <!--end of left content-->




	<div id="footer">
    
    </div>


	
</body></html>

<jsp:include page="footer.html"></jsp:include>