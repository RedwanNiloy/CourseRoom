<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Teacher Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.4/tailwind.min.css">
    <style>
    .course-item:hover {
  transform: scale(1.1);
  transition: transform 0.2s ease-in-out;
}</style>
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
        <li class="mr-3">
          <a class="inline-block text-gray-600 no-underline hover:text-gray-200 hover:text-underline py-2 px-4" href="#">Log Out</a>
        </li>
      </ul>
    </div>
    </nav>

<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
    <div class="px-4 py-6 sm:px-0">
      <div class="flex items-center justify-between">
        <h1 class="text-2xl font-semibold text-gray-900">All Courses</h1>
        <a href="create_course" class="px-4 py-2 text-white bg-blue-500 rounded hover:bg-blue-600">Add new course</a>
</div>
      </div>
        <div class="my-4">
            <div class="grid grid-cols-3 gap-x-8 gap-y-8">
                <c:forEach var="course" items="${Courses}">
                  
                    <a href="course?courseCode=${course.courseCode}">
                		<div class="bg-white rounded-lg shadow-md p-4 relative course-item">
	                    	<div class="text-lg font-medium text-gray-900">${course.courseName}</div>
	                        <div class="text-md font-medium text-gray-500">${course.courseCode}</div>
	                        <div class="text-md font-medium text-gray-500">${course.instructor}</div>
	                        <div class="text-md text-gray-500">${course.noOfStudents} Students</div>
                    	</div>
					</a>
                   
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</body>
</html>