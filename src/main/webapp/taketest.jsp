<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Home Page</title>
      <link rel="stylesheet" href="css/quiz.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      
   </head>
   <body>
      <nav>
         <div class="menu-icon">
            <span class="fas fa-bars"></span>
         </div>
         <div class="logo">
            TrackLearnPractice
         </div>
         <div class="nav-items">
            <button class="dropbtn"><a style="text-decoration: none;"href="studenthome">Home</a></button>
            <div class="dropdown">
			    <button class="dropbtn">Training
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="studentreg">Add Student</a>
			      <a href="viewallstu">View Students</a>
			    </div>
			    </div>
			    <div class="dropdown">
			    
			     <button class="dropbtn">Tests 
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="taketest">Take Tests</a>
			      <a href="viewallfac">View Faculty</a>
			    </div>
			    </div>
			    <div class="dropdown">
			     <button class="dropbtn">Learning
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="trainerreg">Add Trainer</a>
			      <a href="viewalltra">View Trainers</a>
			    </div>
			    </div>
			    
			    <div class="dropdown">
			     <button class="dropbtn">Profile
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="studentcpwd">Change Password</a>
			      <a href="studentlogout">Logout</a>
			   
			    </div>
         </div>
         </div>
         
      </nav>
      
      <script>
         const menuBtn = document.querySelector(".menu-icon span");
         const searchBtn = document.querySelector(".search-icon");
         const cancelBtn = document.querySelector(".cancel-icon");
         const items = document.querySelector(".nav-items");
         const form = document.querySelector("form");
         menuBtn.onclick = ()=>{
           items.classList.add("active");
           menuBtn.classList.add("hide");
           searchBtn.classList.add("hide");
           cancelBtn.classList.add("show");
         }
         cancelBtn.onclick = ()=>{
           items.classList.remove("active");
           menuBtn.classList.remove("hide");
           searchBtn.classList.remove("hide");
           cancelBtn.classList.remove("show");
           form.classList.remove("active");
           cancelBtn.style.color = "#ff3d00";
         }
      </script>
      <div class="safe">
      
       <form action="checkresult" method="POST">  
<input type="hidden" name="id"  value="${id}" />

<c:forEach var= "q" items ="${q}"   >  
    <br>
    <div class="card">
        
        <div class="container" >
            <div class="xy">

                <h3> ${q.question} </h3>
                <br>
                     <div> <input type="radio" name="${q.questionid}" value="option1">${q.option1}</div>
                     <br>
                     <div> <input type="radio" name="${q.questionid}" value="option2">${q.option2}</div>
                     <br>
                     <div><input type="radio" name="${q.questionid}" value="option3">${q.option3}</div>
                     <br>
                          <div><input type="radio"  name="${q.questionid}" value="option4">${q.option4}</div>
                     
                </div>
        </div>
      </div>

<br><br>

</c:forEach>


     
      
<div align="center">

<input type="submit" value="SUBMIT"></input>  

</div>
<br> <br>
</form>
</div>
   </body>
</html>