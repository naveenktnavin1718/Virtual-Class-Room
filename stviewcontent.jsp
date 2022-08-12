<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/co1.jpg");

   background-size: cover;

  
        }
        </style>
<button><A href="studentmainpage1.jsp"> Student Main </A></button> <BR> 
<br>
<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                
                
                if(t1!=null&&t1!=""){
                response.sendRedirect("stviewcontent1.jsp?cvar="+t1+"&svar="+t2);
                //out.println("Record Saved Successful");
                }

%>



<center>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="stviewcontent.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/viewcontent.bmp"> </td> </tr>    
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

  
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Next" value="Next"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
</center><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>


