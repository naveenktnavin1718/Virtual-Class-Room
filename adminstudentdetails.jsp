
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
 <style>
        body{
         background-image:url("images/stu.jpg");

   background-size: cover;

  
        }
        </style> 
<script language="javascript">
    
        function Validate()
        {
            
            var x= document.form1.text2.value;
            if (x.length<=0)
           {
                alert("Please enter the RegNo");
                return false;
           } 
           
           
   var i= document.form1.text3.value;
                if(i.length<=0)
                {
                    alert("Name should consist of atleast five characters.");
                    return false;
                }
  
           
            y = document.form1.text5.value;
           if(isNaN(y)||y.indexOf(" ")!=-1)
           {
              alert("Enter numeric value")
              return false; 
           }
          if (y.length!=10)
           {
                alert("enter valid mobile no");
                return false;
           }


            var emailID = document.form1.text6.value;
            atpos = emailID.indexOf("@");
            dotpos = emailID.lastIndexOf(".");
            if (atpos < 1 || ( dotpos - atpos < 2 )) 
            {
                alert("Please enter correct email ID")
                return false;
            }
            else
                {
                    alert("Student Details Saved Succesful")
                }
        }
</script>

<BUTTON><A href="adminmainpage1.jsp"> Home </A></BUTTON> <BR> 

<%
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                 String t9=request.getParameter("text9");
                String t4=request.getParameter("text4");
                String t5=request.getParameter("text5");
                String t6=request.getParameter("text6");
               String t8=request.getParameter("text8");
               
              
                if(t2!=null&&t2!=""){
		stmt.executeUpdate("insert into StudentTab values('" + t2 + "','abcd','" + t3 + "','" + t9 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t8 + "')");
		
                response.sendRedirect("adminstudentdetails.jsp");
                }

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"  name="form1"  action="adminstudentdetails.jsp">
    <table border="2" bgcolor="silver"> 
 
     <tr> <td height="60"> RegNo </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="60"> Student Name </td> <td> <input type="text" name="text3" value=""></td> </tr>
    <tr> <td height="60"> Course </td> <td> 
<select  name=text9 size=1>
<option>BCA </option>
<option>BBA </option>
<option>B.COM </option>
<option>MBA</option>
<option>MCA </option>
<option>M.COM </option>

</select>
</td> </tr> 
    
    <tr> <td height="60"> Address </td> <td> <textarea  name="text4" rows="5" cols="20"></textarea></td> </tr>
    <tr> <td height="60"> Mobile No </td> <td> <input type="text" name="text5" value=""></td> </tr>
    <tr> <td height="60"> eMail Id </td> <td> <input type="text" name="text6" value=""></td> </tr>
    
         
<tr> <td height="60"> Year of Admn </td> <td> 
<select  name=text8 size=1>
<option>2015-16 </option>
<option>2016-17 </option>
<option>2017-18 </option>
<option>2018-19</option>
<option>2019-20 </option>
<option>2020-21 </option>
<option>2021-22 </option>
<option>2022-23 </option>
</select>
</td> </tr> 
    
    
    <tr> <td height="60">  </td> <td align="center"> <input type="submit" name="Save" value="Save" onclick="return Validate()"></td> </tr>       
    </table></b>
        </form>
</td><td width="25%"></td></tr>
</table></center>


<%@ include file="footerfile.jsp"%>