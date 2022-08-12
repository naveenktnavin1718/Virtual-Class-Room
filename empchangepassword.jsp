<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<html>
<head>
 <style>
        body{
         background-image:url("images/pw1.jpg");

   background-size: cover;

  
        }
        </style> 
       
           
</head>

<button><A href="empmainpage1.jsp"> Emp Main </A></button> <BR> 

<%
		String et1=request.getParameter("text11");
		String et2="";
                et2=(String)session.getAttribute("empcodevar");
                String et3=request.getParameter("text12");
                session.setAttribute( "s1var", "");
		
                rst=stmt.executeQuery("select * from staffTab where staffcode= '" + et2 + "' and pWord='" + et1 + "'");
		if (!rst.next())
                {
                out.println("");
                
                }
                else
                {
                if(et3!=null&&et3!=""){
		stmt.executeUpdate("update stafftab set pword='" + et3 + "' where staffcode='" + et2 + "'");
		session.setAttribute( "s1var", "Password Changed Successfully");
                }
                else
                {
                session.setAttribute( "s1var", "Please enter all the fields");
                }
                }
%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST" name="form1"   action="empchangepassword.jsp">
    <table border="2" bgcolor="silver"> 
        <tr> <td height="20" colspan="2"> <b><center>Change Password</CENTER></b> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Old Password </td> <td> <input type="password" name="text11" value=""></td> </tr>
    <tr> <td height="40"> New Password </td> <td> <input type="password" name="text12" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="return Validate()"></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"></td> </tr> 
      <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    
    
    
    </table>
        </form></b>
</td><td width="25%"></td></tr>
</table></center>
<br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>