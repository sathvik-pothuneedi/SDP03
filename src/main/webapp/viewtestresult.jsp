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
      <link rel="stylesheet" href="css/style2.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <style>
      .styled-table {
    border-collapse: collapse;
    margin: px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
      
      </style>
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
            <button class="dropbtn"><a style="text-decoration: none;"href="trainerhome">Home</a></button>
            <div class="dropdown">
			    <button class="dropbtn">Courses
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="viewtracourse">Access Courses</a>
			      <a href="viewschedule">View Schedule</a>
			    </div>
			    </div>
			    <div class="dropdown">
			    
			     <button class="dropbtn">Students
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="facultyreg">View Students</a>
			    </div>
			    </div>
			    <div class="dropdown">
			     <button class="dropbtn">Materials
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="trainerreg">Add Materials</a>
			      <a href="viewalltra">View Materials</a>
			    </div>
			    </div>
			    <div class="dropdown">
			     <button class="dropbtn">Tests
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="addtest">Add Tests</a>
			      <a href="viewalltra">View Tests</a>
			    </div>
			    </div>
			    <div class="dropdown">
			     <button class="dropbtn">Profile
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="trainercpwd">Change Password</a>
			      <a href="trainerlogout">Logout</a>
			   
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
      
      <br><br><br>
    <h3 align=center>Congratulations&nbsp;<c:out value="${suname}"></c:out></h3>



<table align=center class="styled-table">
    <thead>
       
    </thead>
    <tbody>
        
        <tr><th>UserName:</th>&nbsp;<td>${suname}</td></tr>
        <tr><th>Score:</th>&nbsp;<td>${score}</td></tr>



        
    </tbody>
      
   </body>
</html>