<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<BR>
<%
		String t7=request.getParameter("text7");
		String t8=request.getParameter("text8");
                session.setAttribute( "svar", "" );
		rst=stmt.executeQuery("select * from StudentTab where regNo= '" + t7 + "' and passWord='" + t8 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                 session.setAttribute( "svar", t7 );
                 session.setAttribute( "regvar", t7 );
                 
                 
                 DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
                String dvar = fmt1.format(new java.util.Date());
                DateFormat fmt2 = new SimpleDateFormat("hh:mm:ss");
                String d2var= fmt2.format(new java.util.Date());

		int i1=1000;
                rst=stmt.executeQuery("select (max(LogNo) + 1) as mNo from custLogTab");
                if (rst.next())
                {
                    session.setAttribute("logvar", rst.getString("mNo") );
                i1= Integer.parseInt(rst.getString("mNo"));
                }
                //session.setAttribute( "logvar", i1 );
                if(t7!=null&&t7!=""){
		stmt.executeUpdate("insert into CustLogTab(logno,loginDate,logintime,custcode) value(" + i1 + ",'" + dvar + "','" + d2var + "','" + t7 + "')");
                	}
                

                 
                 
                response.sendRedirect("studentmainpage1.jsp");
                 }
                
                
               


                
                else
                {out.println("");
                 response.sendRedirect("aretry.jsp");
                 
                }
               

%>