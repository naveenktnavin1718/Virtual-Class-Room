<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
<style>
              body{
         background-image:url("images/aq.png");

   background-size: cover;

  
        }
        </style>
</head>
<% 
int num1=Integer.parseInt(request.getParameter("qvar"));
session.setAttribute( "q1var", num1 );
%>
<button><A href="studentmainpage1.jsp"> Student Main </A> </button><BR> 

<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="2" bgcolor="silver" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from QATab where qno = "+num1+"");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>Q No : "+rst.getString("qNo")+ " </td> <td height=20 colspan=2>"+rst.getString("question")+ " </td></tr><tr><td></td><td height=20 colspan=2> <BR>" +rst.getString("answer")+ "</td> </tr>" );
                }
                
%>  
   
    <tr> <td height="40" colspan="2"><A href="stviewanswers.jsp"> Back </a>  </td>  </tr>
    </table>

</td><td width="25%"></td></tr>
</table>
</</center>
<%@ include file="footerfile.jsp"%>
