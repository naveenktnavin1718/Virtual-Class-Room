<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

  <html>
      <head>
           <style>
              body{
         background-image:url("images/vc4.jpg");

   background-size:cover;

  
        }
        </style>
      </head>
      
<% //out.print( request.getRemoteAddr() ); %>      


<BR>
<b>
<font face="verdana" size="4">
<br/><br/><br/><br/>
        <table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10" bgcolor="silver"> 
        
           
        <tr><td height="20"> <A href="adminfaq.jsp"> General FAQ </a> <td> <A href="adminfaqlist.jsp">General List</a>  </td> </tr>
        <tr><td height="20"> <A href="admineducation.jsp"> Qualification Details </a> <td> <A href="admineducationlist.jsp">Qualification List</a>  </td> </tr>
        <tr><td height="20"> <A href="adminjob.jsp"> Profession Details </a> </td> <td> <A href="adminjoblist.jsp">Profession List</a>  </tr>
            <tr> <td height="20"> <A href="adminemp.jsp">Staff Details </a></td> <td> <A href="adminemplist.jsp">Staff List</a>  </tr>
            <tr> <td height="20"> <A href="AdminClass.jsp">Class Details </a></td> <td> <A href="adminclasslist.jsp">Class List</a>  </tr>
            <tr> <td height="20"> <A href="adminsubject.jsp">Subject Details </a></td> <td> <A href="adminsubjectlist.jsp">Subject List</a>  </tr>
    <tr> <td height="20"><A href="adminstudentdetails.jsp">Students Entry </a> </td> <td> <A href="adminstaffloglist.jsp">Staff Log history</td> </tr>
            <tr> <td height="20"><A href="admincustloglist.jsp">Students log history</a> </td> <td> <A href="mainpage_1.jsp">Logout </td> </tr>
        <tr> <td height="20"><A href="studentlist.jsp">Students list</a> </td></tr>
        </table>
</font>
</b>
       
      
      </html>

  
  <%@ include file="footerfile.jsp"%>