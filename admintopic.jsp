
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
     <head>
           <style>
              body{
         background-image:url("images/to.jpg");

   background-size:cover;

  
        }
        </style>
      </head>
    <script>
        function adalert()
        {
            alert("Record Saved Successful");
        }
    </script>
</head>
<BUTTON><A href="empmainpage1.jsp"> Staff Main </A></button>
<BR> 

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
		
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into topicTab value('" + t3 + "','" + t1 + "','" + t2 + "')");
		}

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="admintopic.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/topic.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
      <tr> <td height="40"> Subject Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select subjectName from subjectTab order by subjectname");
		out.println("<select  name=text3 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("subjectname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr>    
      
    <tr> <td height="40"> Topic Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="adalert()"></td> </tr>       
    </table></b>
        </form>
</td><td width="25%"></td></tr>
</table></CENTER><br/><br/><br/><br/><br/><br/>

<%@ include file="footerfile.jsp"%>
