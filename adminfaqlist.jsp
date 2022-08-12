<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
 <head>
           <style>
              body{
         background-image:url("images/qu.jpg");

   background-size:cover;

  
        }
        </style>
      </head>


<button><A href="adminmainpage1.jsp"> Back</A></button> <BR> 

<center>
<table border="0" > 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/faqlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from faqTab where qno > 1000 order by qno");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("qNo")+ "</b> </td><td height=20 colspan=2><b>"
                        +rst.getString("question")+ "</b> </td></tr><tr><td> </td><td height=20 colspan=2>"+rst.getString("answer")+ " </td> </tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</CENTER>
<%@ include file="footerfile.jsp"%>
