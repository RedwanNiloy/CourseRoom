package cse.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CourseServlet
 */
@WebServlet("/CourseServlet")
public class CourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  // get course ID from request parameter
        String courseId = request.getParameter("courseId");
        Course course = fetchCourseDetails(courseId);
        request.setAttribute("courseTitle", course.getCourseName());
        request.setAttribute("courseCode", course.getCourseCode());
		request.setAttribute("instructor", course.getInstructor());
        // fetch course details from database or other data source using the course ID
        List<Student> students = fetchStudents(courseId);

        // set course details as attribute on request object
        request.setAttribute("students", students);

        // forward request to course.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("course.jsp");
        dispatcher.forward(request, response);
	}
	private Course fetchCourseDetails(String courseId) {
		return new Course("CS101", "Introduction to Computing", "John Smith",10);
	}
	
	
	
	private List<Student> fetchStudents(String courseId) {
		List<Student> students = new ArrayList<Student>();
		students.add(new Student(1, "John", "s1@s1.com"));
		students.add(new Student(2, "Jane", "s2@s2.com"));
		students.add(new Student(3, "Adam", "s3@s3.com"));
		students.add(new Student(4, "Emily", "s4@s4.com"));
		students.add(new Student(5, "Tom", "s5@s5.com"));
		return students;
		
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
