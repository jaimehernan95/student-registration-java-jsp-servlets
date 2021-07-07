package gakkou;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beansSakae.Course;

/**
 * Servlet implementation class courseDAO
 */
public class courseDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("Windows-31J");
		  
		  String sql = "select * from course";
		  
		  Connection con= null;
			Statement smt = null;

			try {
				
				con = ConnectionClass.getConnection();
				smt = con.createStatement();
				ResultSet rs = smt.executeQuery(sql);
				
				List<Course> list = new ArrayList<Course>();
				
				while(rs.next()){

					Course course = new Course();
					course.setCourse_id(rs.getInt("course_id"));
					course.setCourse_name(rs.getString("course_name"));
					
					list.add(course);
				}
				
				request.setAttribute("list", list);

			}catch (SQLException e){
				throw new ServletException(e);			

			} finally {
				if (smt !=null){
					try{smt.close();}catch (SQLException ignore){}
				}
				
				if (con !=null){

					try{con.close();}catch(SQLException ignore){}
			}
		}
			
			
			String admintype = request.getParameter("admintype");
			
			if (admintype.equals("1")) {
				
				request.getRequestDispatcher("/websakae/registration_form.jsp")
				
				.forward(request, response);
				 
				
			} else if (admintype.equals("2")) {
				
				
				request.getRequestDispatcher("/websakae/tutor_registration_form.jsp")
				
				.forward(request, response);
				
			}
				
	}
}

	          
