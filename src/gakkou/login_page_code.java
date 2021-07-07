package gakkou;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beansSakae.UserInfo;

/**
 * Servlet implementation class login_page_code
 */
public class login_page_code extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("Windows-31J");
		 process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("Windows-31J");
		 process(request, response);
 }
		  
		  
		  protected void process(HttpServletRequest request, 
					HttpServletResponse response){

		  


			  String user_uname = request.getParameter("user_uname");
			  String user_pword = request.getParameter("user_pword");
	  

			  System.out.println("user_uname = "  + user_uname);
			  System.out.println("user_pword = "  + user_pword);
			  
			  if((!(user_uname.equals(null) || user_uname.equals("")) && !(user_pword.equals(null) || user_pword.equals("")))){
			  
		        try{ 
		        	
		        	Class.forName("com.mysql.jdbc.Driver");
		        	System.out.println("driver loaded");
		        	
		        	Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/sakaedb","root","");
		        	System.out.println("Connection created");
		        	
//		        	String sql = "select * from userdetail" +
//		        			" where user_uname=? and user_pword=?";  
		        	
		        	String sql = "select userdetail.user_id, userdetail.user_uname, userdetail.user_pword, userdetail.course_id, userdetail.user_name, userdetail.user_nameKana, userdetail.user_email, userdetail.user_tel,course.course_name" + 
		        	" from userdetail left join course on userdetail.course_id = course.course_id where userdetail.user_uname=? and userdetail.user_pword=?";
			        
		        	PreparedStatement preparedStatement = conn.prepareStatement(sql);
		        	
		        
		        	preparedStatement.setString (1, user_uname);
		        	preparedStatement.setString(2, user_pword);
		        	
		        	
		        	ResultSet rs = preparedStatement.executeQuery();  // put the  values in this  result set
		        	System.out.println("SUCCESSFUL ECECUTION OF USER SELECT QUERY");
		        	
		        	
		        //	rs = ps.executeQuery();
		        	if(rs.next())    // if the rs is ok put the  values in this  result set
		        	{ 

		        	String user_userdbUname = rs.getString("user_uname");
		        	String user_userdbPword = rs.getString("user_pword");

		        	if(user_uname.equals(user_userdbUname) && user_pword.equals(user_userdbPword) )
		        	{
		        		HttpSession session =request.getSession();
		        		session.setAttribute("user_uname", user_userdbUname);
		        		session.setAttribute("user_pword", user_userdbPword);
		        		
		        		List<UserInfo> list = new ArrayList<UserInfo>();
		        		
		        			
		        			UserInfo userinfo = new UserInfo();
		        			userinfo.setUser_id(rs.getInt("user_id"));
		        			userinfo.setUser_uname(rs.getString("user_uname"));
		        			userinfo.setUser_pword(rs.getString("user_pword"));
		        			userinfo.setUser_name(rs.getString("user_name"));
		        			userinfo.setUser_nameKana(rs.getString("user_nameKana"));
		        			userinfo.setUser_email(rs.getString("user_email"));
		        			userinfo.setUser_tel(rs.getString("user_tel"));
		        			userinfo.setCourse_id(rs.getInt("course_id"));
		        			userinfo.setCourse_name(rs.getString("course_name"));
		        			
		        			list.add(userinfo);
		        			
		        			request.setAttribute("list", list);
		        			
		        			      			
		        			request.getRequestDispatcher("student_information_page.jsp").forward(request, response);
		        	}else {
		        		request.setAttribute("message", "user doesnt exist");
			        	response.sendRedirect("../websakae/login.jsp");
		        	}
		        	}
		        	else{
		        		request.setAttribute("message", "user doesnt exist");
		        		response.sendRedirect("../websakae/login.jsp");

		        	}
		        	rs.close();
		        	preparedStatement.close(); 
		        	conn.close();
		        }catch (Exception e) {
		            System.err.println("Got an exception!");
		            System.err.println(e.getMessage());
		          }
			  }
		  }
		  
	}
