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
      <form:form method="post" action="viewquestions">
    <table align="center">
    
    <tr>
    <td>Select Course ID:</td>
    <td>
    <select name="course_id" required>
      <option value="">--Select--</option>
    <c:forEach items="${qlist}" var="qlist">
<option value="${qlist.course_id}">${qlist.course_id}</option>

</c:forEach>
</select>
    </td>
    </tr>
    <tr>
    <td>Select Question Bank Title:</td>
    <td>
    <select name="QB Title" required>
      <option value="">--Select--</option>
    <c:forEach items="${qlist}" var="qlist">
  
<option value="${qlist.questionbanktitle}">${qlist.questionbanktitle}</option>

</c:forEach>
</select>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <input type="submit" value="Get Questions" class="buttons">
    </td>
    </tr>
    
    </table>
    </form:form>
      
   </body>
</html>