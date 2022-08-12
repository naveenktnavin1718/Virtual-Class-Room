<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
      <style>
              body{
         background-image:url("images/profession1.jpg");

   background-size: cover;

  
        }
        </style>
</head><br/><br/><br/><br/>

<BUTTON><A href="adminmainpage1.jsp"> Admin Main </A> <BR> </BUTTON>

<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/edlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from qualificationTab order by edname");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("edname")+ "</b> </td> <td> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  
    </table></center>

</td><td width="25%"></td></tr>
</table><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<%@ include file="footerfile.jsp"%>
