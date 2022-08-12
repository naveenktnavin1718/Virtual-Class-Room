<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/co1.jpg");

   background-size: cover;

  
        }
        </style>
<BUTTON><A href="studentmainpage1.jsp"> Student Main </A></BUTTON> <BR> 
<br>
<%
		

%>



<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="stviewcontent.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" > <img style="-webkit-user-select: none" src="images/viewcontent.bmp"> </td> </tr>    
    
    <center>    
    
   
<% 
String t1=request.getParameter("qvar");
int rvar=Integer.parseInt(t1);
//out.println(t1);
int a1=1;
rst=stmt.executeQuery("select * from contentTab where rNo="+rvar+"");

while( rst.next())
{  
out.println("<tr><td height=30><center><h3><b>" + rst.getString("className")+ "</b></h3></center></td></tr>");
out.println("<tr><td height=30><center>" + rst.getString("subjectName")+ "</center></td></tr>");
out.println("<tr><td height=30><center>" + rst.getString("topicName")+ "</center></td></tr>");
out.println("<tr><td height=30><center>" + rst.getString("contenthead")+ "</center></td></center></tr>");
out.println("<tr><td height=30><center>" + rst.getString("cDetails")+ "</center></td></center></tr>");
out.println("<tr><center><td height=20></td></center></tr>");
out.println("<tr><td><center><a href=videos/" + rst.getString("videofile")+ "> Video File </a></center> </td></center></tr>");
a1++;
}

rst.close();
%>  
   

  
</center>
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>


</center>