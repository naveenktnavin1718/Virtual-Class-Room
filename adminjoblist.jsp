<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
    <style>
              body{
         background-image:url("images/pd.png");

   background-size: cover;

  
        }
        </style>
</head>
<BUTTON><A href="adminmainpage1.jsp"> Admin Main </A></BUTTON> <BR> <br/><br/><br/><br/><br/><br/><br/><br/>

<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/joblist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from professionTab order by jobname");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20><b>"+rst.getString("jobname")+ "</b> </td> <td> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table></center>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>
