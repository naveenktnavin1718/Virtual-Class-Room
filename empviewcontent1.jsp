<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
 <style>
              body{
         background-image:url("images/co1.jpg");

   background-size: cover;

  
        }
        </style>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 
<br>
<%
		

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="empviewcontent.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="3"> <img style="-webkit-user-select: none" src="images/viewcontent.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="3"> </td> </tr> 
    <tr> <td> slno </td> <td> Topic </td> <td> Content Heading </td> </tr>  
    
   
<% 
                String t1=request.getParameter("cvar");
		String t2=request.getParameter("svar");
                //out.println(t1);
                int a1=1;
                rst=stmt.executeQuery("select rNo,topicName,contentHead from contentTab where classname='"+t1+"' and subjectname='"+t2+"' order by rNo");
		
                while( rst.next())
                {
                out.println("<tr><td>"+a1+" </td><td>" + rst.getString("topicName")+ "</td><td><a href=empviewcontent2.jsp?qvar="+ rst.getString("rNo")+">" + rst.getString("contenthead")+ " </a></td></tr>");
                a1++;
                }
               
                rst.close();
%>  
   

  
    
    </table>
        </form></b>
</td><td width="25%"></td></tr>
</table></center>

<%@ include file="footerfile.jsp"%>


