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
        <script>
        function adalert()
        {
            alert("Anawer sent  Successful");
        }
    </script>
</head>
<% 
int num1=Integer.parseInt(request.getParameter("qvar"));
session.setAttribute( "q1var", num1 );
%>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 

<form method="POST" action="empanswer2.jsp">
    <center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="2" cellpadding="5" cellspacing="5" bgcolor="silver"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/ans1.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from QATab where qno = "+num1+"");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>Q No : "+rst.getString("qNo")+ " </td> <td height=20 colspan=2>"+rst.getString("question")+ " </td></tr><tr><td><td><td height=20 colspan=2><textarea name=t1 cols=50 ></textarea> </td> </tr>" );
                }
                
%>  
    <tr> <td align="center" colspan="2" > <input type="submit" onclick="adalert()" value="&nbsp;&nbsp;&nbsp; Save &nbsp;&nbsp;&nbsp;" ></td> </tr>
    </table>

</td><td width="25%"></td>
</table></center>
</form>
<%@ include file="footerfile.jsp"%>