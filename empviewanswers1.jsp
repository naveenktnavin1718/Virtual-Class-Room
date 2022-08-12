<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<% 
int num1=Integer.parseInt(request.getParameter("qvar"));
session.setAttribute( "q1var", num1 );
%>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="0" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from QATab where qno = "+num1+"");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>Q No : "+rst.getString("qNo")+ " </td> </tr><tr></tr><tr><td height=20 colspan=2>Question <BR>"+rst.getString("question")+ " </td></tr><tr><td height=20 colspan=2> Answer <BR>" +rst.getString("answer")+ "</td> </tr>" );
                }
                
%>  
    <tr> <td height="40" colspan="2">  </td> <td align="center" colspan="2" > </td> </tr>
    <tr> <td height="40" colspan="2"><A href="empviewanswers.jsp"> Back </a>  </td> <td align="center" colspan="2" > </td> </tr>
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
