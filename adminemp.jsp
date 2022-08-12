<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<style>
              body{
         background-image:url("images/st1.jpg");

   background-size: cover;

  
        }
        </style>    
<script language="javascript">
        function Validate()
        {
            var x= document.form1.text1.value;
            if (x.length<=0)
           
          {
                alert("Please enter the staffcode");
                return false;
           }
           
           var i= document.form1.text2.value;
                if(i.length<=0)
                {
                    alert("Name should consist of atleast five characters.");
                    return false;
                }
  
   
  

   
  
           
            y = document.form1.text6.value;
           if(isNaN(y)||y.indexOf(" ")!=-1)
           {
              alert("Enter valid Mobile No")
              return false; 
           }
          if (y.length!=10)
           {
                alert("enter 10 numbers only");
                return false;
           }


            var emailID = document.form1.text7.value;
            atpos = emailID.indexOf("@");
            dotpos = emailID.lastIndexOf(".");
            if (atpos < 1 || ( dotpos - atpos < 2 )) 
            {
                alert("Please enter correct email ID")
                return false;
            }
            else
                {
                    alert("Staff Details Saved Succesful")
                }
        }
</script>
<button><A href="adminmainpage1.jsp"> Home </A> <BR> </button>

<%
		String t1=request.getParameter("text1");
                String p1=request.getParameter("pass1");
                String p2=request.getParameter("pass2");
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                
                String t6=request.getParameter("text6");
                String t7=request.getParameter("text7");
                String t8=request.getParameter("text8");
                String t10=request.getParameter("text10");
                String t9=request.getParameter("text9");
		
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into staffTab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t10 + "','" + t9 + "')");
		
                }

%>



<center><b>
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    name="form1" action="adminemp.jsp">
    <table border="1" bgcolor="silver"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/staff.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> StaffCode </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value="abcd"></td> </tr>
    <tr> <td height="40"> Staff Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <Textarea  name="text3" cols="20" rows="5" > </textarea></td> </tr>
    
    
  
    
    <tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text6" value=""></td> </tr>
    <tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text7" value=""></td> </tr>

    <tr> <td height="40"> Qualification Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select edname from QualificationTab order by edname");
		out.println("<select  name=text8 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("edname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>  
<tr> <td height="60"> Department</td> <td> 
<select  name="text10" size=1>
<option>BCA </option>
<option>BBA </option>
<option>B.COM </option>
<option>MBA</option>
<option>MCA </option>
</select>
</td> </tr>   
    
    <tr> <td height="40"> Designation Name </td> <td> 
   
<%
                rst=stmt.executeQuery("select jobname from professionTab order by jobname");
		out.println("<select  name=text9 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("jobname")+ " </option>");
                }
                
                out.println("</select>");
                %>        
     </td> </tr>        

    
    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="return Validate()"></td> </tr>       
    </table></b>
        </form>
</td><td width="25%"></td></tr>
</table></center>

<%@ include file="footerfile.jsp"%>

