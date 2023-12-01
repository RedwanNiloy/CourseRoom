<%@ page language="java" %>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html>
  <head>
    <title>Course Management System</title>
    <!-- Include the Tailwind CSS stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css">
    <style>
        .student-container {
          background-color: white;
          border-radius: 10px;
          padding: 10px;
          margin-bottom: 20px;
          box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
      </style>
</head>
  <body class="bg-gray-100">
    <div class="max-w-2xl mx-auto px-4 py-8">
      <h1 class="text-3xl font-bold mb-4 text-gray-900">Course Information</h1>
      <div class="bg-blue-100 rounded-lg shadow-md p-6 mb-8">
        <p class="text-lg font-medium text-gray-700">Course Title: <%= request.getAttribute("courseTitle") %></p>
        <p class="text-lg font-medium text-gray-700">Course Code: <%= request.getAttribute("courseCode") %></p>
        <p class="text-lg font-medium text-gray-700">Instructor: <%= request.getAttribute("instructor") %></p>
      </div>
      <h2 class="text-2xl font-bold mb-4 text-gray-900">Enrolled Students</h2>
      <ul class="bg-green-100 rounded-lg shadow-md p-6">
      <c:forEach var="student" items="${students}">
        
        <div class="student-container">
    <h3 class="text-lg mb-2 text-gray-700">${student.name}</h3>
    <p class="text-sm text-gray-500">${student.email}</p>
  </div>
         </c:forEach>
      </ul>
    </div>
  </body>
</html>