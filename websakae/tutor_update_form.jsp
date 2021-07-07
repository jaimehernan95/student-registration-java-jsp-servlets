<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import = "java.util.List, beansSakae.TutorInfo"%>
<%@page import = "java.util.List, beansSakae.Course"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
        <title>新しいユーザー</title>
    </head>
    <body>
      
    
    
     <% 
  	List<TutorInfo> list = (List<TutorInfo>)request.getAttribute("list");
	TutorInfo tutorinfo = list.get(0);
  
 	 %>	
 	 <form action ="../websakae/tutor_display_info" method="post">
 	 
			<table border="1" width="30%" cellpadding="5">

                <thead>

                    <tr>

                        <th colspan="2"> *は必須項目です</th>

                    </tr>

                </thead>

                <tbody>



					<tr>

                        <td>ID </td>

                        <td>
                        <input type="hidden" name="tutor_id" value="<%=tutorinfo.getTutor_id()%>" />
                        
                        </td>

                    </tr>

                    <tr>

                        <td>お名前 *</td>

                        <td><input type="text" name="tutor_name" value="<%=tutorinfo.getTutor_name()%>" />
                        </td>

                    </tr>
                    

                    <tr>

                        <td>フリガナ *</td>

                        <td><input type="text" name="tutor_nameKana" value="<%=tutorinfo.getTutor_nameKana()%>" /></td>

                    </tr>
                    
                    
                    
                    <tr>
                    
                   		<td>コース *</td>
                   		<td> 
							<select name="course_id">
                   			<% 
							List<Course> courselist = (List<Course>)request.getAttribute("courselist");
							for (int i=0; i <courselist.size(); i++){
							Course course = courselist.get(i);
							
							if(course.getCourse_id() == tutorinfo.getCourse_id()) {
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

                        <td>メールアドレス 　*　</td>

                        <td><input type="text" name="tutor_email" value="<%= tutorinfo.getTutor_email()%>" /></td>

                    </tr>
                    
                    
              	 <tr>

                    <td>電話番号 　*　</td>    
               			<td> <input type="text" name="tutor_tel" value="<%=tutorinfo.getTutor_tel()%>"/> </td>
               			
                 </tr>
                 
                    

                 <tr>

                        <td>ユーサー名　*　</td>

                        <td><input type="text" name="tutor_uname" value="<%=tutorinfo.getTutor_uname()%>" /></td>

                    </tr>

                    <tr>

                        <td>パスワード　*　</td>

                        <td><input type="text" name="tutor_pword"  value="<%=tutorinfo.getTutor_pword()%>" maxlength=10></td>

                    </tr>
                    
           


                     <tr>

                        <td><input type="submit" value="送る信する" /></td>

                    </tr>

                </tbody>

            </table>
    
    
    </form>
    </body>
</html>
