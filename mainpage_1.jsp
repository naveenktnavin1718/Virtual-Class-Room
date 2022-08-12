

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="connfile.jsp"%>
  <%
                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";

                if (now.get(now.HOUR_OF_DAY) < 12) {
                    tod = "Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 18) {
                    tod = "Afternoon!";
                } else {
                    tod = "Evening!";
                }
        %>
  
        <BR>
        <h1 style="color: white"> Hello Good <%=tod%></h1>
        
        <BR>
       
       <head>
       
    
    <style>
        
                  .popup{
                    background: rgba(0,0,0,0.9);
                    width:100%;
                    height:100%;
                    position:absolute;
                    top:0;
                    display:none;
                   justify-content:center;
                   align-items:center;
                   
                   
                }
               .popup1{
                    background: rgba(0,0,0,0.9);
                    width:100%;
                    height:100%;
                    position:absolute;
                    top:0;
                    display:none;
                   justify-content:center;
                   align-items:center;
                   
                   
                }
               
               .popup2{
                    background: rgba(0,0,0,0.9);
                    width:100%;
                    height:100%;
                    position:absolute;
                    top:0;
                    display:none;
                   justify-content:center;
                   align-items:center;
                   
                   
                }
                
                 .button{
                    background: #fff;
                    padding: 10px 15px;
                    color:#34495e;
                    font-weight:bolder;
                    text-transform:uppercase;
                    font-size:18px;
                    border-radius: 5px;
                    box-shadow: 6px 6px 29px -4px rgba(0,0,0,75);
                    margin-top:25px;
                    text-decoration:none;
                    transition: 0.4s;
                    
                    
                }
                 
                .img1{
                    border-width: 50px;
           border-radius: 50%;
           height: 4cm;
           width: 4cm;
           
        }
        .img2{
            border-width: 50px;
           border-radius: 50%;
           height: 4cm;
           width: 4cm;
        }
        .img3{
            border-width: 50px;
           border-radius: 50%;
           height: 4cm;
           width: 4cm;
        }
        .close
        {
           border-radius: 50%;
           height: 30px;
           width: 30px;
           position: absolute;
           top:-15px;
           right:-15px;
           box-shadow: 6px 6px 20px -4px rgba(0,0,0,0,75);
           cursor: pointer;
        }
         .close1
        {
           border-radius: 50%;
           height: 30px;
           width: 30px;
           position: absolute;
           top:-15px;
           right:-15px;
           box-shadow: 6px 6px 20px -4px rgba(0,0,0,0,75);
           cursor: pointer;
        }
        .close2
        {
           border-radius: 50%;
           height: 30px;
           width: 30px;
           position: absolute;
           top:-15px;
           right:-15px;
           box-shadow: 6px 6px 20px -4px rgba(0,0,0,0,75);
           cursor: pointer;
        }
         .close3
        {
           border-radius: 50%;
           height: 30px;
           width: 30px;
           position: absolute;
           top:-15px;
           right:-15px;
           box-shadow: 6px 6px 20px -4px rgba(0,0,0,0,75);
           cursor: pointer;
        }
           
                .input{
                    margin:500px auto;
                    display:block;
                    height:200px;
                    width:100%;
                    font-size:24pt;
                    padding:1000px;
                    border:500px solid gray;
                }
                .button:hover{
                    background:#cccccc;
                    color:white;
                }
                .popupcon{
                    height:500px;
                    width:400px;
                    background: #ff6600;
                    padding:20px;
                    border-radius:5px;
                    position:relative;
                }
                 .popupcon1{
                    height:500px;
                    width:400px;
                    background: #00ff00;
                    padding:20px;
                    border-radius:5px;
                    position:relative;
                }
                 .popupcon2{
                    height: 500px;
                    width:400px;
                    background: blueviolet;
                    padding:20px;
                    border-radius:5px;
                    position:relative;
                }
                

        body{
         background-image:url("images/el.jpg");

   background-size:cover

  
        }
        img{
           border-radius: 50%;
           height: 4cm;
           width: 4cm;
        }
         b2{
        background-color:gray;
        font-weight:bolder;
        font-size:13px;
        color:gray;
        border:1px;
        box-shadow: 6px 6px 29px -4px rgba(0,0,0,75);
                  
                    text-decoration:none;
                    transition: 0.4s;
                    
    }
   
    
    
         b1{
        background-color:gray;
        font-weight:bolder;
        font-size:13px;
        color:grey;
        border:1px;
        box-shadow: 6px 6px 29px -4px rgba(0,0,0,75);
                   
                    text-decoration:none;
                    transition: 0.4s;
                    
    }
    .b3:hover{
                    background:gray;
                    color:white;
                }
                
       b1{
        background-color:gray;
        font-weight:bolder;
        font-size:13px;
        color:grey;
        border:1px;
        box-shadow: 6px 6px 29px -4px rgba(0,0,0,75);
                   
                    text-decoration:none;
                    transition: 0.4s;
                    
    }
    .b2:hover{
                    background:gray;
                    color:white;}          
                
     .b1:hover{
                    background:gray;
                    color:white;
                
     }
       back{
        background-color:gray;
        font-weight:bolder;
        font-size:30px;
        padding-top: 50px;
        padding-left:10in;
        color:grey;
        border:1px;
        box-shadow: 6px 6px 29px -4px rgba(0,0,0,75);
        text-decoration:none;
                    transition: 0.4s;
                    
    }
    .back:hover{
                    background:gray;
                    color:white;
                }
  
                
.column {
  float: left;
  width: 25%;
  padding: 0.3in;
  padding-top: 1in;
  padding-left: 0.5in;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
  
}
    </style>
    </head>
    
    <body >
   
        
         <br/><br/><br/>
    <center>
   <div class="row">
        <div class="column">
          <img  src="images/a1.jpg" id="adminimg">
          
         <br/>
         <br/>
 
           <button type="submit" style="width:3.5cm;height:1.5cm" class="b2" id="button1" > <h1> ADMIN </h1> </button>
        
        </div>
        <div class="popup">
        <div class="popupcon">
            <img src="images/close.jpg" alt="close" class="close">
            <center> 
                   
  
            <h2> Admin Login </h2>
            <img src="images/a1.jpg" class="img2" >
          <form method="POST" action="adminmainpage.jsp">
              <br/>
              <br><input type="text" placeholder="username" name="text3"><br/><br/>
            <input type="password" placeholder="Password" name="text4"><br/><br/><br/>
            <button type="submit" class="button" >LOGIN</button>
            </form>
            </center>
        </div>
</div>
        <div class="popup1">
        <div class="popupcon1">
            <img src="images/close1.jpg" alt="close1" class="close1">
            <center> 
               
               


            <h2> Staff Login </h2>
            <img src="images/user.png" class="img1" >
          <form method="POST" action="empmainpage.jsp">
           <br/>
              <br><input type="text" placeholder="Username" name="text5"><br/><br/>
            <input type="password" placeholder="Password" name="text6"><br/><br/>
            <button type="submit" class="button" >LOGIN</button>
           
            </form>
            
            </center>
        </div>
</div>
        
   
        <div class="column">
        <img  src="images/user.png" id="userimg">
       <br/>
    
       <br/>
        

 <button type="submit" style="width:3.5cm;height:1.5cm" class="b1" id="button2" > <h1> Staff </h1> </button>
      </div >     
  
            <div class="popup2">
        <div class="popupcon2">
            <img src="images/close2.jpg" alt="close2" class="close2">
            <center> 
                


            <h2> Student Login </h2>
            <img src="images/studentt.jpg" class="img2" >
          <form method="POST" action="studentmainpage.jsp">
            <br/>
              <br><input type="text" placeholder="Username" name="text7"><br/><br/>
            <input type="password" placeholder="Password" name="text8"><br/><br/>
            <button type="submit" class="button" >LOGIN</button>
           </form>
            
            </center>
        </div>
</div>
        
   
        <div class="column">
        <img src="images/studentt.jpg" id="studentimg">
       <br/>
    
       <br/>
        

 <button type="submit" style="width:3.5cm;height:1.5cm" class="b3" id="button3" > <h1> Student </h1> </button>
      </div > 
    </div>
    </center>
     <script>
    document.getElementById("adminimg").addEventListener("click",function(){
                document.querySelector(".popup").style.display= "flex";
            } )
     document.querySelector(".close").addEventListener("click",function(){
               document.querySelector(".popup").style.display= "none";
            } )
     document.getElementById("userimg").addEventListener("click",function(){
                document.querySelector(".popup1").style.display= "flex";
            } )
     document.querySelector(".close1").addEventListener("click",function(){
                document.querySelector(".popup1").style.display= "none";
            } )
            document.getElementById("studentimg").addEventListener("click",function(){
                document.querySelector(".popup2").style.display= "flex";
            } )
     document.querySelector(".close2").addEventListener("click",function(){
                document.querySelector(".popup2").style.display= "none";
            } )
     document.getElementById("button1").addEventListener("click",function(){
                document.querySelector(".popup").style.display= "flex";
            } )
     document.querySelector(".close").addEventListener("click",function(){
                document.querySelector(".popup").style.display= "none";
            } )
   document.getElementById("button2").addEventListener("click",function(){
                document.querySelector(".popup1").style.display= "flex";
            } )
     document.querySelector(".close").addEventListener("click",function(){
                document.querySelector(".popup1").style.display= "none";
            } )
document.getElementById("button3").addEventListener("click",function(){
                document.querySelector(".popup2").style.display= "flex";
            } )
     document.querySelector(".close").addEventListener("click",function(){
                document.querySelector(".popup2").style.display= "none";
            } )
     </script>
    </body>
    
</html>
