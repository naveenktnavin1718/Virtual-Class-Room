

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
           
    
       <style type="text/css" >
           body{
    margin:0;
    position: fixed;
}
.background
{
    background-size: 100%;

    
}
 h3
 {
     font-color:white;
 }
header {
    background:black;
   }
header h1{
    align:center;
    color: white;
    display:inline;
    font-family: initial;
    font-size:50px;
    float:left;
    padding:2px 0px 0px 400px;
    margin-bottom: 0px;
    margin-top: 5px;
}
nav img
{
    border-radius: 8px; 
    margin:7px;
}
nav ul{
    display:inline-block;
    padding:0px;
    margin-top:0px;
   position:relative;
   background-color:darkblue;
  
}

nav ul li{
    display:inline-block;
    color:white;
    list-style-type:none;
    float:left;
   alignment-adjust: baseline;
   font-size: 25px;
   font-family: sans-serif;
   margin-botton:0px;
   margin-right:7px;
   
}

nav ul li a{
    color:white;
    text-decoration:none;
   display: inline;
   position: relative;
   padding-right: 60px;
   padding-left: 60px;
}

#nav{
    font-family:'Monstserrat',sans-serif;
    margin-bottom: 0px;
    width:200%;
    padding-bottom: 0px;
}

.divider{
    background-color:coral;
    height:10px;
    margin-top:0px;
}
.home_black:hover {
background-color:activecaption;
font-family: serif;
height: 45px;
display: inline;
padding-bottom: 5px;
}
h3
{
    color:black;
    text-transform: capitalize;
    text-shadow: 3px 2px grey;
    font-family: sans-serif;
    font-size: 25px;
    margin-left: 30px;
}
p
{
    color: white;
    width:200px;
    height:200px;
    font-size: xx-large;
    text-shadow: 2px 2px red;
    position:ABSOLUTE;
    left:1020px;
    top:280px;
    text-align: center;
}
.home_image
{
    margin-top: 5%;
    margin-left:15%; 
    width: 50%;
   
}

.home_line3{
    border-style:inset;
     border-color:wheat;
     border-width: thin;
     font-family:'Raleway',sans-serif;
    margin-left:20%;
    padding:5% 0% 5% 23%;
    font-size:30px;
    color:black;
    width: 60%;
}
.register
{
    color:blue;
    font-size:50px;
    padding-left:5px; 
}
.register:hover{
    font-size: 55px;
    color:red;
}
       </style>
        <title>Quiz Contest</title>
    </head>
    <body class="background" background="images/ex3.png">
    <header>
            <nav>
                    <IMG SRC="images/QA.jpg" height="90" width="90" align="left" >
               <h1 color="white">Exam Website </h1>
                    <IMG SRC="images/DHB.jpg" height="90" width="90" align="right">
               <ul id="nav">
                  
                   <li><a class="home_black" href="mainpage_1.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;</li> 
              <%   if(session.getAttribute("newuser")==null)
                 {%>
                   
                   <li><a class="home_black" href="login.jsp">LOGIN</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <% } %>   
                   <li><a class="home_black" href="about_quiz.html">ABOUT-QUIZ</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <%   if(session.getAttribute("newuser")!=null)
                     {%>
                  <li><a class="home_black" href="add_question.html">SUBMIT-QUESTIONS</a></li>
                  <% } %>
               </ul>
           </nav>
       </header>
           <div class="divider" ></div>
           <br>
           <br>
           <br>
           <br>
           <br>
           <br>
           <h3><u>This quiz application contains: </u></h3>
        <h3>Technical</h3>
        <h3>Quantitative Aptitude</h3>
        <h3>General Knowledge</h3>
        <h3>English Grammar</h3>
        <br>
        <br>
        <p><b>This Exam Application is made for the welfare of students.</b></p>
         <div class="home_image">
              <%   if(session.getAttribute("newuser")==null)
                 {%>
              
              <% } %>        
         </div>
        </body>
</html>