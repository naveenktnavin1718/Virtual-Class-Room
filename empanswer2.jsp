

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<head>
    <style>
              body{
         background-image:url("images/aq.png");

   background-size: cover;

  
        }
        </style>
    <script>
        function adalert()
        {
            alert("Answer Sent Successful");
        }
    </script>
</head>
<BUTTON><A href="empmainpage1.jsp"> Emp Main </A></BUTTON> <BR> 
<%
		int t2=0;
                String evar="";
                String t1=request.getParameter("t1");
                evar=(String)session.getAttribute("empcodevar");
		t2=(Integer)session.getAttribute("q1var");
                //out.println(evar+t2);
                //int num1=Integer.parseInt(t2);
                //int num1=Integer.parseInt(session.getAttribute("q1var"));
		//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
		stmt.executeUpdate("update qatab set answer='"+t1+"',empcode='"+evar+"' where qno="+t2+"");
		
                
                out.println("<BR> <BR><A href=empanswer.jsp> Next Question </a>");

%>
