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
      <br/><br/><br/>   
<BR>

        <table border="2" align ="center" width="50%" cellpadding="5" cellspacing="5" bgcolor="silver"> 
        <tr> <td height="20"> <A href="admintopic.jsp"> <center> <h2>Topic Details </h2></center></ </a></td> </tr>
        <tr> <td height="20"> <A href="admintopiclist.jsp"><center> <h2>Topic List</h2></center></</a>  </td></tr>
        <tr> <td height="20"> <A href="empcontent.jsp">  <center> <h2>Content Entry  </h2>  </center></a></td> </tr>
        <tr> <td height="20"> <A href="empviewcontent.jsp">  <center><h2> View Content</h2></center> </a></td>  </tr>
        <tr>
        <tr> <td height="20"><A href="empanswer.jsp"><center><h2>Answer Questions</h2></center></a> </td>  </tr>
        <tr> <td height="20"> <A href="empchangepassword.jsp"><center> <h2>Change Password </h2></center> </a>  </td> </tr>
        <tr> <td height="20"> <A href="examindex.jsp"><center><h2> Exam </h2></center> </a> </td>  </tr>
        <tr> <td height="20"> <A href="empfaq.jsp"><center><h2> View FAQ </h2></center> </a> </td>  </tr>
        <tr> <td height="20"> <A href="stafflogout.jsp"><center><h2> Logout </h2></center> </a> </td>  </tr>
        </table>
    
  </html>

<%@ include file="footerfile.jsp"%>