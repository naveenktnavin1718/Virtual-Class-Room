
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
    <head>
      <style>
              body{
         background-image:url("images/co1.jpg");

   background-size: cover;

  
        }
        </style>
    <script>
        function adalert()
        {
            alert("Content Saved Successful");
        }
    </script>
</head>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></BUTTON> <BR> 
<br>
<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
		String t4=request.getParameter("text4");
                String t5=request.getParameter("text5");
                String t6=request.getParameter("filename");
                String rvar="0";
                if(t1!=null&&t1!=""){
                rst=stmt.executeQuery("select max(rNo)+1 as NewNo from contentTab");
                if (rst.next())
                {                rvar=   rst.getString("NewNo"); }
                int r1var= Integer.parseInt(rvar);
		stmt.executeUpdate("insert into contentTab value("+r1var+",'" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','')");
		
                               }

%>



<center><b> 
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="empcontent.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/condev.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
      
    <tr> <td height="40"> Class Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select ClassName from ClassTab order by Classname");
		out.println("<select  name=text1 size=1>");
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
		out.println("<select  name=text2 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("subjectname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr>    

    <tr> <td height="40"> Topic Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select topicName from topicTab order by topicname");
		out.println("<select  name=text3 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("topicname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr>    
    
    <tr> <td height="40"> Content Title </td> <td> <input type="text" name="text4" value="" ></td> </tr>
    <tr> <td height="40"> Explanation </td> <td> <textarea  name="text5" rows="10" cols="40"></textarea></td> </tr>
    <tr> <td height="40"> choose file </td> <td>  <input type="file" id="myFile" name="filename"></td> </tr>
   
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="adalert()"></td> </tr>       
    </table>
        </form></B>
</td><td width="25%"></td></tr>
</table></center>

<%@ include file="footerfile.jsp"%>
