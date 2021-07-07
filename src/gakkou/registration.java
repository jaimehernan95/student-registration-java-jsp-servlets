package gakkou;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("Windows-31J");
		  
		  
	       
        String user_name = request.getParameter("user_name");
        String user_nameKana = request.getParameter("user_nameKana");
        String user_email = request.getParameter("user_email");
        String user_tel = request.getParameter("user_tel");
        String user_uname = request.getParameter("user_uname");
        String user_pword = request.getParameter("user_pword");
        String course_id = request.getParameter("course_id");
      
        
        System.out.println("user_name = "  + user_name);
        System.out.println("user_nameKana = "  + user_nameKana);
        System.out.println("user_email = "  + user_email);
        System.out.println("user_tel = "  + user_tel);
        System.out.println("user_uname = "  + user_uname);
        System.out.println("user_pword = "  + user_pword);
        System.out.println("course_id = "  + course_id);
        
        
        
        try{ 
        	
        	Class.forName("com.mysql.jdbc.Driver");
        	System.out.println("driver loaded");
        	
        	Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/sakaedb","root","");
        	System.out.println("Connection created");
        	
        	String sql = "INSERT INTO userdetail (user_name, user_nameKana, user_email, user_tel, user_uname, user_pword, course_id) values (?,?,?,?,?,?,?)";  
	        
        	PreparedStatement preparedStatement = conn.prepareStatement(sql);
        	
        	preparedStatement.setString (1, user_name);
        	preparedStatement.setString (2, user_nameKana);
        	preparedStatement.setString(3, user_email);
        	preparedStatement.setString (4, user_tel);
        	preparedStatement.setString (5, user_uname);
        	preparedStatement.setString(6, user_pword);
        	preparedStatement.setString(7, course_id);
        	
        	preparedStatement.executeUpdate(); 
        	System.out.println("Inserted");
        	
        }catch (Exception e) {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
          }
        
       
           // forwards to the message page  
              getServletContext().getRequestDispatcher("/websakae/student_registration_ok.jsp").forward(  
                   request, response);  

        }
      }
