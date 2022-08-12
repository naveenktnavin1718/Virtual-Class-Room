<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/aq.png");

   background-size: cover;

  
        }
        </style>
<button><A href="studentmainpage1.jsp"> Student Main </A></button> <BR> 

<center>
<table border="0"> 
<tr><td height ="100" width="20%"></td><td>

    
    <table border="2" bgcolor="silver" cellpadding="5" cellspacing="0"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                String evar;
                evar=(String)session.getAttribute("svar");
                rst=stmt.executeQuery("select * from qaTab where uname ='"+evar+"' order by qno desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("qNo")+ " </td><td height=20>"+rst.getString("qDate")+ " </td><td height=20 >"+rst.getString("question")+ " </td><td height=20><button><a href=stviewanswers1.jsp?qvar="+rst.getString("qNo")+ "><label> Click Here To View Answer</label></a></button>  </td> </tr>" );
                }
                
%>  
    </table>

</td><td width="20%"></td></tr>
</table>
</center>
<%@ include file="footerfile.jsp"%>