<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/aq.png");

   background-size: cover;

  
        }
        </style>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 
<center>
<form>
<table border="0"> 
<tr><td height ="100" width="20%"></td><td>

    
    <table border="2" cellpadding="6" cellspacing="0" bgcolor="silver"> 
    <tr> <td height="20" colspan="6"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from qatab where empcode ='' order by qno desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><a href=empanswer1.jsp?qvar="+rst.getString("qno")+ ">"+rst.getString("qno")+"</a>  </td><td height=20>"+rst.getString("qDate")+ " </td><td height=20 >"+rst.getString("uName")+ " </td><td height=20 >"+rst.getString("claname")+ " </td><td height=20 >"+rst.getString("subname")+ "</td></tr>" );
                }
                
%>  
    </table>
  


</td><td width="20%"></td></tr>
</table>
</form>


<%@ include file="footerfile.jsp"%>
</center>