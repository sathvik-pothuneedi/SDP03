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
      
      <form:form action="submitquestionbank" method="post" modelAttribute="quiz">
<h3 align="center">Add Question Bank</h3>
   <table align=center>
      
         
         <tr>
         <td><label>Course Id</label></td>
         <td>
   <form:select path="course_id" required="required">
   <form:option value="-1">Select</form:option>
   <c:forEach items="${courselist}" var="course">
   <option value="${course.id}">${course.courseid}</option>
</c:forEach>
   </form:select>
   </td>
   </tr>
         <tr><td></td></tr>
   <tr>
   <td><label>QuestionBank Title</label></td>
   <td>
   <form:input path="questionbanktitle" required="required"></form:input>
   </td>
   </tr>
   
   <tr><td></td></tr>
   
   

    <tr>
        <td><label>Question</label></td>
        <td>
        <form:input path="question" required="required"></form:input>
        </td>
        </tr>
    <tr><td></td></tr>
    <tr>
        <td><label>Option-1</label></td>
        <td>
        <form:input path="option1" required="required"></form:input>
        </td>
        </tr>
        <tr><td></td></tr>
        <tr>
   <td><label>Option-2</label></td>
   <td><form:input path="option2" required="required"/></td>
   </tr>
   
   <tr><td></td></tr>
   
   <tr>
   <td><label>Option-3</label></td>
   <td><form:input path="option3" required="required"/></td>
   </tr>
   
   <tr><td></td></tr>
   
   <tr>
   <td><label>Option-4</label></td>
   <td><form:input path="option4" required="required"/></td>
   </tr>
   
   <tr><td></td></tr>
   

   
  <tr>
       <td><label>Correct Option</label></td>
    
     <td>
   <form:select path="correctoption" required="required">
   <form:option value="-1">Select</form:option>
   <form:option value="option1">Option-1</form:option>
   <form:option value="option2">Option-2</form:option>
   <form:option value="option3">Option-3</form:option>
   <form:option value="option4">Option-4</form:option>
   
   </form:select>
   </td>
   </tr>
   
   <tr align=center>
   <td colspan=2><input type="submit" value="Register" class="button"></td>
   </tr>
   </table>
   
   </form:form>
      
      
      
      
   </body>
</html>