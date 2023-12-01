<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.4/tailwind.min.css">
</head>
<body class="bg-gray-100">
<nav class="flex items-center justify-between flex-wrap bg-gray-800 p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
      <span class="font-semibold text-xl tracking-tight">Course Management System</span>
    </div>
    <div class="block lg:hidden">

    </div>
    <div id="nav-content" class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block pt-6 lg:pt-0">
      <ul class="list-reset lg:flex justify-end flex-1 items-center">
        <li class="ml-3">
          <a id="add-course-button" class="inline-block bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded cursor-pointer">Add Course</a>
		<form id="add-course-form" class="hidden ml-3" method="post" action="/add-course" style="max-width: 400px;">
  <div class="mt-4 flex justify-end">
  <label for="course-code" class="block text-gray-700 font-bold mb-2 text-white" style="margin-right: 10px;">Course Code:</label>
  <div style="flex: 1;">
    <input type="text" name="courseCode" id="course-code" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" style="padding: 10px; margin-right: 10px; height: 30px;">
  </div>
  <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-2" style="padding: 10px; margin-left: 10px;">Submit</button>
  <button type="button" id="cancel-button" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded" style="padding: 10px;">Cancel</button>
</div>
</form>

        </li>
        <li class="mr-3">
          <a class="inline-block text-gray-600 no-underline hover:text-gray-200 hover:text-underline py-2 px-4" href="#">Log Out</a>
        </li>
      </ul>
    </div>
    </nav>

<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
    <div class="px-4 py-6 sm:px-0">
        <h1 class="text-2xl font-semibold text-gray-900">Registered Courses</h1>
        <div class="my-4">
            <div class="grid grid-cols-3 gap-4">
                <c:forEach var="course" items="${registeredCourses}">
                    <div class="bg-white rounded-lg shadow-md p-4 relative">
                        <div class="text-lg font-medium text-gray-900">${course.courseName}</div>
                        <div class="text-md font-medium text-gray-500">${course.courseCode}</div>
                        <div class="text-md text-gray-500">${course.instructor}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


  <script>
  const addCourseButton = document.getElementById("add-course-button");
  const addCourseForm = document.getElementById("add-course-form");
  const cancelButton = document.getElementById("cancel-button");
  const submitButton = document.getElementById("submit-button");

  addCourseButton.addEventListener("click", () => {
    addCourseButton.classList.toggle("hidden");
    addCourseForm.classList.toggle("hidden");
  });

  cancelButton.addEventListener("click", () => {
    addCourseForm.reset();
    addCourseButton.classList.toggle("hidden");
    addCourseForm.classList.toggle("hidden");
  });

  submitButton.addEventListener("click", () => {
    const courseCode = document.getElementById("course-code").value;
    if (courseCode) {
      const xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
          location.reload();
        }
      };
      xhr.open("POST", "/add-course", true);
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhr.send(`courseCode=${courseCode}`);
    }
  });
</script>

</body>
</html>