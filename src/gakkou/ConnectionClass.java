package gakkou;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConnectionClass
 */
public class ConnectionClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnectionClass() {
        super();
        // TODO Auto-generated constructor stub
    }

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
	}


public static Connection getConnection(){
	
	String databaseURL= "jdbc:mysql://localhost/sakaedb";
	String user = "root";
	String password = "";
	Connection conn = null;
	
	try {
		Class.forName ("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
		databaseURL, user, password);   
		return conn;
	}  catch (Exception e) {
		
		throw new IllegalStateException(e);
	
	} 
}

}
