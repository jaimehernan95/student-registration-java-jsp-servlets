package gakkou;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beansSakae.UserInfo;

/**
 * Servlet implementation class student_update_info
 */
public class student_update_info extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
        String user_id = request.getParameter("user_id");
      
        
        System.out.println("user_name = "  + user_name);
        System.out.println("user_nameKana = "  + user_nameKana);
        System.out.println("user_email = "  + user_email);
        System.out.println("user_tel = "  + user_tel);
        System.out.println("user_uname = "  + user_uname);
        System.out.println("user_pword = "  + user_pword);
        System.out.println("course_id = "  + course_id);
        System.out.println("user_id = "  + user_id);
        
        
        
        try{ 
        	
        	Class.forName("com.mysql.jdbc.Driver");
        	System.out.println("driver loaded");
        	
        	Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/sakaedb","root","");
        	System.out.println("Connection created");

        	
        	String sql = "UPDATE userdetail SET user_name = ?, user_nameKana = ?, user_email = ?, user_tel = ?, user_uname = ?, user_pword = ?, course_id = ? WHERE user_id = ?";
	 	
        	
        	PreparedStatement preparedStatement = conn.prepareStatement(sql);
        	
        	preparedStatement.setString (1, user_name);
        	preparedStatement.setString (2, user_nameKana);
        	preparedStatement.setString(3, user_email);
        	preparedStatement.setString (4, user_tel);
        	preparedStatement.setString (5, user_uname);
        	preparedStatement.setString(6, user_pword);
        	preparedStatement.setString(7, course_id);
        	preparedStatement.setString(8, user_id);
        	
        	
        	preparedStatement.executeUpdate(); 
        	System.out.println("Updated");
        	List<UserInfo> list = new ArrayList<UserInfo>();
    		
			
			UserInfo userinfo = new UserInfo();
			
			
			userinfo.setUser_uname(user_name);
			userinfo.setUser_pword(user_nameKana);
			userinfo.setUser_name(user_email);
			userinfo.setUser_nameKana(user_tel);
			userinfo.setUser_email(user_uname);
			userinfo.setUser_tel(user_pword);
			
			userinfo.setCourse_id (Integer.parseInt(course_id));
			userinfo.setUser_id(Integer.parseInt(user_id));

			String sql1 = "select * from course where course_id =" + course_id;

	   	      
	   			Statement smt = null;
	   			smt = conn.createStatement();
				ResultSet rs1 = smt.executeQuery(sql1);
				if(rs1.next())    // if the rs is ok put the  values in this  result set
        	{ 
				userinfo.setCourse_name(rs1.getString("course_name"));
        	}
			list.add(userinfo);
			request.setAttribute("list", list);
				
				
        }catch (Exception e) {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
          }
        
       
           // forwards to the message page  
              getServletContext().getRequestDispatcher("/websakae/student_information_page.jsp").forward(  
                   request, response);  

        }
      }
