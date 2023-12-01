package cse.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the student's registered courses from the database.
        List<Course> registeredCourses = getRegisteredCourses();
        // Set the retrieved courses as a request attribute.
        request.setAttribute("registeredCourses", registeredCourses);
        // Forward the request to the student homepage JSP page.
        request.getRequestDispatcher("student.jsp").forward(request, response);
    }
    
    // Method to retrieve the student's registered courses from the database.
    private List<Course> getRegisteredCourses() {
        // In this example, we will simply create a list of 5 Course objects with random information.
        List<Course> registeredCourses = new ArrayList<Course>();
        registeredCourses.add(new Course("CS101", "Introduction to Computing", "John Smith",10));
        registeredCourses.add(new Course("MATH202", "Calculus II", "Sarah Johnson",20));
        registeredCourses.add(new Course("HIST101", "World History", "Michael Lee",30));
        registeredCourses.add(new Course("ENGL210", "Shakespeare", "Rachel Miller",40));
        registeredCourses.add(new Course("BIOL301", "Cell Biology", "David Brown",50));
        
        // Return the list of registered courses.
        return registeredCourses;
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

