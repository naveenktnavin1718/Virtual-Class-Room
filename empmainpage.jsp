<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<BR>
 <%
		String t5=request.getParameter("text5");
		String t6=request.getParameter("text6");
                session.setAttribute( "empcodevar", "" );
		rst=stmt.executeQuery("select * from staffTab where staffcode= '" + t5 + "' and pWord='" + t6 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                 session.setAttribute( "empcodevar", t5 );
                  DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
                String dvar = fmt1.format(new java.util.Date());
                DateFormat fmt2 = new SimpleDateFormat("hh:mm:ss");
                String d2var= fmt2.format(new java.util.Date());

		int i1=1000;
                rst=stmt.executeQuery("select (max(LogNo) + 1) as mNo from staffLogTab");
                if (rst.next())
                {
                    session.setAttribute("logvar", rst.getString("mNo") );
                i1= Integer.parseInt(rst.getString("mNo"));
                }
                //session.setAttribute( "logvar", i1 );
                if(t5!=null&&t5!=""){
		stmt.executeUpdate("insert into StaffLogTab(logno,loginDate,logintime,staffcode) value(" + i1 + ",'" + dvar + "','" + d2var + "','" + t5 + "')");
                	}
                

                 
                 
                response.sendRedirect("empmainpage1.jsp");
                 }
                
                
               
                
                else
                {out.println("username or password is incorrect");
                 response.sendRedirect("aretry.jsp");
                }

%>