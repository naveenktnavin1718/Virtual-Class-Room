<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/st1.jpg");

   background-size: cover;

  
        }
        </style> 
<BUTTON><A href="adminmainpage1.jsp"> Admin Main </A></BUTTON> <BR> 

<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td width="50%">

    
    <table width="100%" border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="6"> <h1> staff Login History </h1> </td> </tr>   
    <tr> <td>slno </td> <td>staff Code </td> <td>Date </td>  <td>Time In </td>  <td> Time Out</td>  </tr>
<% 
                rst=stmt.executeQuery("select * from StafflogTab order by LogNo desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString(1)+ " </td> <td> " + rst.getString(6)+ "</td><td> " + rst.getString(2)+ "</td><td> " + rst.getString(3)+ "</td><td> " + rst.getString(5)+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</center>
<%@ include file="footerfile.jsp"%>
