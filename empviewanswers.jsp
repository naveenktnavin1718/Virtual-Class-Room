<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<BUTTON><A href="empmainpage1.jsp"> Emp Main </A><BUTTON> <BR> 


<table border="0"> 
<tr><td height ="100" width="20%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="0"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                String evar;
                evar=(String)session.getAttribute("empcodevar");
                rst=stmt.executeQuery("select * from qaTab where uname ='"+evar+"' order by claname,subname");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><a href=empviewanswers1.jsp?qvar="+rst.getString("qNo")+ ">"+rst.getString("qNo")+"</a>  </td><td height=20>"+rst.getString("qDate")+ " </td><td height=20 >"+rst.getString("question")+ " </td> </tr>" );
                }
                
%>  
    </table>

</td><td width="20%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>