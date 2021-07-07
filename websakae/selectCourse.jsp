<%@page contentType="text/html" ; charset=Windows-31J"%>
<%@page import="java.util.List, websakae.Course"%>

<html>
<body>
	<table border="1">
		<tr>
			<th>Course_id</th>
			<th>Course_name</th>

			<%
				List<Course> list = (List<Course>) request.getAttribute("list");
				for (int i = 0; i < list.size(); i++) {
					Course course = list.get(i);
			%>
		
		<tr>
			<td><%=course.getCourse_id()%>
			<td><%=course.getCourse_name()%> 
			<%
			}
			%>
	</table>
</body>
</html>