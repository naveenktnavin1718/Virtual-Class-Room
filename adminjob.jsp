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
    <script>
        function adalert()
        {
            alert("Record Saved Successful");
        }
    </script>
</head><br/><br/><br/><br/>
<button><A href="adminmainpage1.jsp"> Admin Main </A></button> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
          
		
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into ProfessionTab value('" + t1 + "','" + t2 + "')");
		};

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminjob.jsp">
    <table border="2" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/jobnames.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Profession Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="adalert()" ></td> </tr>       
    </table></b>
        </form>
</td><td width="25%"></td></tr>
</table></center>
<br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footerfile.jsp"%>
