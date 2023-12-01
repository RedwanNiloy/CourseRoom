<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, javax.naming.*, java.util.*, javax.sql.*" %>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create Course</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css">
  <style>
    .form-input {
      height: 3rem;
      padding: 0.5rem;
    }

    body {
  background-image: url('assets/landingpage/img/register_bg_2.png');
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  height: 100%;
  min-height: 100vh;
}
    </style>
</head>
<body class="bg-gray-900">
    <div style="height: 10vh;"></div>
  <div class="max-w-md mx-auto my-8 bg-gray-800 p-6 rounded shadow-md flex-col justify-center items-center">
  <h1 class="text-3xl font-bold text-gray-100 mb-4">Create New Course</h1>
  <form action="create_course_action.jsp" method="post">
    <div class="mb-4">
      <label for="title" class="block font-medium text-gray-200">Course Title</label>
      <input type="text" id="title" name="title" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100"  required>
    </div>
    <div class="mb-4">
      <label for="code" class="block font-medium text-gray-200">Course Code</label>
      <input type="text" id="code" name="code" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" required>
    </div>
    <div class="mb-4">
      <label for="instructor" class="block font-medium text-gray-200">Instructor</label>
      <select id="instructor" name="instructor" class="form-select mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" style="height: 3rem;" required>
        <option value="">Select an instructor</option>
        <c:forEach items="${teachers}" var="teacher">
      <option value="${teacher.id}">${teacher.name}</option>
    </c:forEach>
      </select>
    </div>
    <button type="submit" class="px-4 py-2 text-white bg-blue-500 rounded-md hover:bg-blue-600 ml-auto">Create Course</button>
  </form>
</div>
</body>
</html>