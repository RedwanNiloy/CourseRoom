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
 * Servlet implementation class CreateCourseServlet
 */
@WebServlet("/CreateCourseServlet")
public class CreateCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Teacher> teachers = fetchTeachers();
		request.setAttribute("teachers", teachers);
		request.getRequestDispatcher("create_course.jsp").forward(request, response);

	}
	
	private List<Teacher> fetchTeachers(){
		List<Teacher> teachers = new ArrayList<Teacher>();
		teachers.add(new Teacher(1, "John Smith"));
		teachers.add(new Teacher(2, "Sarah Johnson"));
		teachers.add(new Teacher(3, "Michael Lee"));
		teachers.add(new Teacher(4, "Rachel Miller"));
		teachers.add(new Teacher(5, "David Brown"));
		return teachers;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
