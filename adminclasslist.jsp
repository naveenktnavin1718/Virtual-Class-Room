<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
        body{
         background-image:url("images/class1.jpg");

   background-size: cover;

  
        }
        </style> 

<button><A href="adminmainpage1.jsp"> Admin Main </A> <BR> </button>
 
<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="2" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/classdetailslist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from ClassTab order by className");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("ClassName")+ "</b> </td><td height=20>"+rst.getString("Details")+ " </td></tr>" );
                }
                
%>  
    </table></center>

</td><td width="25%"></td></tr>
</table><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>
