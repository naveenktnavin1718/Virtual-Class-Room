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

<button><A href="studentmainpage1.jsp"> student Main </A></button> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2="";
                t2=(String)session.getAttribute("svar");
                String t3=request.getParameter("text2");
                session.setAttribute( "s1var", "");
		
                rst=stmt.executeQuery("select * from studentTab where regno= '" + t2 + "' and passWord='" + t1+ "'");
		if (!rst.next())
                {
                out.println("");
                
                }
                else
                {
                if(t3!=null&&t3!=""){
		stmt.executeUpdate("update studenttab set password='" + t3 + "' where regno='" + t2 + "'");
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

    <form method="POST" name="form1"   action="stchangepassword.jsp">
    <table border="2" bgcolor="silver"> 
        <tr> <td height="20" colspan="2"> <b><center>Change Password</CENTER></b> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Old Password </td> <td> <input type="password" name="text1" value=""></td> </tr>
    <tr> <td height="40"> New Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"></td> </tr> 
      <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    
    
    
    </table>
        </form></b>
</td><td width="25%"></td></tr>
</table></center>
<br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>