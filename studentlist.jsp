<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
<style>
              body{
         background-image:url("images/st1.jpg");

   background-size: cover;

  
        }
        </style>
        </head>
<button><A href="adminmainpage1.jsp"> Admin Main </A></button> <BR> 
 
<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/stafflist.bmp"> </td> </tr> 
    <tr><td height="20"><b>Regno</b></td><td height="20"><b>Name</b></td><td height="20"><b>Mobile No</b></td><td height="20"><b>course</b></td><td height="20"><b>year of admission</b></td></tr>
<% 
                rst=stmt.executeQuery("select * from studentTab order by regno,course");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("regno")+ "</b> </td><td height=20>"+rst.getString("name")+ " </td> <td> " + rst.getString("phone")+ "</td><td height=20><b>"+rst.getString("course")+ "</b> </td> <td> " + rst.getString("yearofad")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table></CENTER>

<%@ include file="footerfile.jsp"%>
