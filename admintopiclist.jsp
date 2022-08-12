<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
 <head>
           <style>
              body{
         background-image:url("images/to4.jpg");

   background-size:cover;

  
        }
        </style>
      </head>


<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 
 
<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/topiclist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from topicTab order by Subjectname");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("subjectName")+ " </td><td height=20>"+rst.getString("topicName")+ " </td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table></center>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>

