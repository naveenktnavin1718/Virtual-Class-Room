<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
  <style>
        body{
         background-image:url("images/sub1.jpg");

   background-size: cover;

  
        }
        </style> 

<BUTTON><A href="adminmainpage1.jsp"> Admin Main </A></BUTTON> <BR> 
 
<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/subjectlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from subjectTab order by subjectName");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("subjectName")+ "</b> </td><td height=20>"+rst.getString("Details")+ " </td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</center>
<%@ include file="footerfile.jsp"%>
