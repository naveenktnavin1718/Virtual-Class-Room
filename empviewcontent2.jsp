<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
 <style>
              body{
         background-image:url("images/co1.jpg");

   background-size: cover;

  
        }
        </style>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A><BUTTON> <BR> <br/>
<br>
<%
		

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="empviewcontent.jsp">
    <table border="0"> 
    <tr> <td height="20" > <img style="-webkit-user-select: none" src="images/viewcontent.bmp"> </td> </tr>    
    <tr> <td height="60" > </td> </tr> 
    
    
   
<% 
String t1=request.getParameter("qvar");
int rvar=Integer.parseInt(t1);
//out.println(t1);
int a1=1;
rst=stmt.executeQuery("select * from contentTab where rNo="+rvar+"");

while( rst.next())
{
out.println("<tr><td height=30>" + rst.getString("className")+ "</td></tr>");
out.println("<tr><td height=30>" + rst.getString("subjectName")+ "</td></tr>");
out.println("<tr><td height=30>" + rst.getString("topicName")+ "</td></tr>");
out.println("<tr><td height=30>" + rst.getString("contenthead")+ "</td></tr>");
out.println("<tr><td>" + rst.getString("cDetails")+ "</td></tr>");
out.println("<tr><td height=20></td></tr>");
out.println("<tr><td><a href=videos/" + rst.getString("videofile")+ "> View Content </a> </td></tr>");
a1++;
}

rst.close();
%>  
   

  
    
    </table>
        </form></b>
</td><td width="25%"></td></tr>
</table></center>
<br/>
<%@ include file="footerfile.jsp"%>


