<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
    <style>
              body{
         background-image:url("images/qu.jpg");

   background-size: cover;

  
        }
        </style>
<script>
        function adalert()
        {
            alert("Question sent  Successful");
        }
    </script>
</head>
<button><A href="studentmainpage1.jsp"> Student Main </A></button> <BR> 

<%
                String cvar="";
                
		String t2=request.getParameter("text2");
                
                String cl=request.getParameter("cla");
                String su=request.getParameter("sub");
                
                cvar = (String)session.getAttribute("svar");
                DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
                String dvar = fmt1.format(new java.util.Date());

		int i1=1000;
                rst=stmt.executeQuery("select (max(qno) + 1) as mNo from QATab");
                if (rst.next())
                {
                i1= Integer.parseInt(rst.getString("mNo"));
                }
                
                if(t2!=null&&t2!=""){
		stmt.executeUpdate("insert into qatab values('" + i1 + "','"+dvar+"','" + cvar + "','" + t2 + "','','','" + su + "','" + cl + "')");
		
                ;}

%>


<center>
<table border="0" > 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="stquestion.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/ask1.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    
     <tr> <td height="40"> Class Name </td> <td>
 <% 
                rst=stmt.executeQuery("select ClassName from ClassTab order by Classname");
		out.println("<select  name=cla size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("Classname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr> 
    
    <tr> <td height="40"> Subject Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select subjectName from subjectTab order by subjectname");
		out.println("<select  name=sub size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("subjectname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  


<tr> <td height="40"> Question </td> <td> <TextArea  name="text2"  rows="5" cols="50" > </textarea></td> </tr>
        



<tr> <td height="40">  </td> <td align="center"> <input type="submit" onclick="adalert()" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;"></td> </tr>       


 


    </table>
    </form>
</td><td width="25%"></td></tr>
</table>
</center>
    <br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>

