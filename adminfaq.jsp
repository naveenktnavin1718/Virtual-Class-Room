
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
    <script>
        function adalert()
        {
            alert("FAQ Saved Successful");
        }
    </script>

<STYLE>
     body{
         background-image:url("images/qu.jpg");
background-size: cover;
  }

</STYLE>
</head>
<button><A href="adminmainpage1.jsp"> Admin Main </A></button> <BR> 
<BR>
<%

                
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                

		int i1=1000;
                rst=stmt.executeQuery("select (max(qno) + 1) as mNo from faqTab");
                if (rst.next())
                {
                i1= Integer.parseInt(rst.getString("mNo"));
                }
                
                if(t2!=null&&t2!=""){
		stmt.executeUpdate("insert into faqTab value(" + i1 + ",'" + t2 + "','" + t3 + "')");
		}

%>



<center>
    <b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminfaq.jsp">
       <table border="1" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/faqlist.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    
    


<tr> <td height="40"> Question </td> <td> <TextArea  name="text2"  rows="2" cols="50" > </textarea></td> </tr>
        
<tr> <td height="40"> Answer </td> <td> <TextArea  name="text3"  rows="5" cols="50"  > </textarea></td> </tr>



<tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;" onclick="adalert()" ></td> </tr>       



    </table></b>
</form>
</td><td width="25%"></td></tr>
</table></CENTER>

<%@ include file="footerfile.jsp"%>

