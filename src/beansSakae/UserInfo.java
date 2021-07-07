package beansSakae;

import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class UserInfo
 */
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
        // TODO Auto-generated constructor stub
        private int user_id;
    	private String user_uname;
    	private String user_pword;
    	private String user_name;
    	private String user_nameKana;
    	private String user_email;
    	private String user_tel;
    	private int course_id;
    	private String course_name;
     	private int user_status;

    	
     	
        public int getUser_id() {
            return user_id;
        }
        public void setUser_id(int user_id) {
            this.user_id = user_id;
        }
        
        
        
        public String getUser_uname() {
            return user_uname;
        }
        public void setUser_uname(String user_uname) {
            this.user_uname = user_uname;
        }
        
        
        
        public String getUser_pword() {
            return user_pword;
        }
        public void setUser_pword(String user_pword) {
            this.user_pword = user_pword;
        }
        
        
        
        public String getUser_name() {
            return user_name;
        }
        public void setUser_name(String user_name) {
            this.user_name = user_name;
        }
        
        
        
        public String getUser_nameKana() {
            return user_nameKana;
        }
        public void setUser_nameKana(String user_nameKana) {
            this.user_nameKana = user_nameKana;
        }
        
        
        
        public String getUser_email() {
            return user_email;
        }
        public void setUser_email(String user_email) {
            this.user_email = user_email;
        }
        
        
        
        public String getUser_tel() {
            return user_tel;
        }
        public void setUser_tel(String user_tel) {
            this.user_tel = user_tel;
        }
        
     
        
        public int getCourse_id() {
            return course_id;
        }
        public void setCourse_id(int course_id) {
            this.course_id = course_id;
        } 
        
        
        
        public String getCourse_name() {
            return course_name;
        }
        public void setCourse_name(String course_name) {
            this.course_name = course_name;
        }
        
        
        public int getUser_status() {
            return user_status;
        }
        public void setUser_status(int user_status) {
            this.user_status = user_status;
        }
        
        
    }