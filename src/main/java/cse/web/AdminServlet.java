package cse.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Course> courses = getRegisteredCourses();
        // Set the retrieved courses as a request attribute.
        request.setAttribute("Courses", courses);
        // Forward the request to the student homepage JSP page.
        request.getRequestDispatcher("admin.jsp").forward(request, response);
	}
	
	private List<Course> getRegisteredCourses() {
        // In this example, we will simply create a list of 5 Course objects with random information.
        List<Course> courses = new ArrayList<Course>();
        courses.add(new Course("CS101", "Introduction to Computing", "John Smith",10));
        courses.add(new Course("MATH202", "Calculus II", "Sarah Johnson",20));
        courses.add(new Course("HIST101", "World History", "Michael Lee",30));
        courses.add(new Course("ENGL210", "Shakespeare", "Rachel Miller",40));
        courses.add(new Course("BIOL301", "Cell Biology", "David Brown",50));
        
        // Return the list of registered courses.
        return courses;
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
