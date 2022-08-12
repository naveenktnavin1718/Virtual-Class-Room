<%-- 
    Document   : login_val
    Created on : 24 Jan, 2022, 1:47:38 PM
    Author     : SUBHASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>


 <%
 try{
     

		String t9=request.getParameter("mail");
		String t10=request.getParameter("psw");
		rst=stmt.executeQuery("select * from stafftab where email= '" + t9 + "' and pWord='" + t10 + "'");
		
                if (rst.next())
                {out.println("Login Successful"); 
                response.sendRedirect("admin_home.jsp");
                 }
  else
      {
        try{
                               
                    String t11=request.getParameter("mail");
		String t12=request.getParameter("psw");
		rst=stmt.executeQuery("select * from studenttab where emailid= '" + t11 + "' and password='" + t12 + "'");
		
                if (rst.next())
                {out.println("Login Successful"); 
                response.sendRedirect("welcome.jsp");
                   
                    
                               }
                            else{
                request.setAttribute("errorMessage","Invalid Mail-Id or Password");
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
        }
                               }
        catch(Exception ex)
        {
                         request.setAttribute("errorMessage","Invalid Mail-Id or Password");
			 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			 rd.forward(request, response);
        }
    }
}
catch(Exception ex)
{
    request.setAttribute("errorMessage","Try Again");
    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
    rd.forward(request, response);
    System.out.println(""+ex);
      }
%>