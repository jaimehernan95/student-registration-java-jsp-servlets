package beansSakae;

import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class Course
 */
public class Course extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int course_id;
 	private String course_name;
 	
 	
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
    
}