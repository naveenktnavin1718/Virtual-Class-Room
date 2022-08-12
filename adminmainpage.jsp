
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<%
		String t3=request.getParameter("text3");
		String t4=request.getParameter("text4");
		//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
		rst=stmt.executeQuery("select * from AdminloginTab where uName= '" + t3 + "' and pWord='" + t4 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                response.sendRedirect("adminmainpage1.jsp");
                 }
                
                  else 
                  {out.println("User Name or Password is not correct");
                    response.sendRedirect("aretry.jsp");
                }

%>

 