<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import = "java.util.List, beansSakae.UserInfo"%>
<%@page import = "java.util.List, beansSakae.Course"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
        <title>Add new user</title>
    </head>
    <body>
      
    
    
     <% 
  	List<UserInfo> list = (List<UserInfo>)request.getAttribute("list");
	UserInfo userinfo = list.get(0);
  
 	 %>	
 	 <form action ="../websakae/student_display_info" method="post">
 	 
			<table border="1" width="30%" cellpadding="5">

                <thead>

                    <tr>

                        <th colspan="2"> *�͕K�{���ڂł�</th>

                    </tr>

                </thead>

                <tbody>



					<tr>

                        <td>ID </td>

                        <td>
                        <input type="hidden" name="user_id" value="<%=userinfo.getUser_id()%>" />
                        
                        </td>

                    </tr>

                    <tr>

                        <td>�����O *</td>

                        <td>
                        <input type="text" name="user_name" value="<%=userinfo.getUser_name()%>" />
                        </td>

                    </tr>
                    

                    <tr>

                        <td>�t���K�i *</td>

                        <td><input type="text" name="user_nameKana" value="<%=userinfo.getUser_nameKana()%>" /></td>

                    </tr>
                    
                    
                    
                    <tr>
                    
                   		<td>�R�[�X *</td>
                   		<td> 
							<select name="course_id">
                   			<% 
							List<Course> courselist = (List<Course>)request.getAttribute("courselist");
							for (int i=0; i <courselist.size(); i++){
							Course course = courselist.get(i);
							
							if(course.getCourse_id() == userinfo.getCourse_id()) {
							%>
								<option value="<%= course.getCourse_id() %>" selected ><%=course.getCourse_name()%></option>
							<%
							
							} else {
							 %>
  								<option value="<%= course.getCourse_id() %>"><%=course.getCourse_name()%></option>
  							 <% 
  								}
							}
 							 %>
							</select>
						</td>
                   		
                	 </tr>
                	 
                	 
                    <tr>

                        <td>���[���A�h���X �@*�@</td>

                        <td><input type="text" name="user_email" value="<%= userinfo.getUser_email()%>" /></td>

                    </tr>
                    
                    
              	 <tr>

                    <td>�d�b�ԍ� �@*�@</td>    
               			<td> <input type="text" name="user_tel" value="<%=userinfo.getUser_tel()%>"/> </td>
               			
                 </tr>
                 
                    

                 <tr>

                        <td>���[�T�[���@*�@</td>

                        <td><input type="text" name="user_uname" value="<%=userinfo.getUser_uname()%>" /></td>

                    </tr>

                    <tr>

                        <td>�p�X���[�h�@*�@</td>

                        <td><input type="text" name="user_pword"  value="<%=userinfo.getUser_pword()%>" maxlength=10></td>

                    </tr>
                    
           


                     <tr>

                        <td><input type="submit" value="����M����" /></td>

                    </tr>

                </tbody>

            </table>
    
    
    </form>
    </body>
</html>
