<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import="java.util.List, beansSakae.Course"%>
<%@page import="java.util.List, beansSakae.UserInfo"%>

<!DOCTYPE html>

<html>

<head>
<title>�w�Z �o�^</title>
<meta http-equiv="Content-Type"
	content="text/html; charset= Windows-31J"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>

	<br>
	<br>

	<div class="container">
		<div class="jumbotron">
			<h2 align="center">�w�Z �o�^</h2>
		</div>
	</div>

	<form method="post" action="../websakae/registration">



		<center>

			<table border="1" width="30%" cellpadding="5">

				<thead>

					<tr>

						<th colspan="2">*�͕K�{���ڂł�</th>

					</tr>

				</thead>

				<tbody>

					<tr>

						<td>�����O *</td>

						<td><input type="text" name="user_name" value="" /></td>

					</tr>


					<tr>

						<td>�t���K�i *</td>

						<td><input type="text" name="user_nameKana" value="" /></td>

					</tr>



					<tr>

						<td>�R�[�X *</td>
						<td><select name="course_id">
								<%
									List<Course> list = (List<Course>) request.getAttribute("list");
									for (int i = 0; i < list.size(); i++) {
										Course course = list.get(i);
								%>
								<option value="<%=course.getCourse_id()%>"><%=course.getCourse_name()%></option>
								<%
									}
								%>
						</select></td>

					</tr>


					<tr>

						<td>���[���A�h���X *</td>

						<td><input type="text" name="user_email" value="" /></td>

					</tr>


					<tr>

						<td>�d�b�ԍ� *</td>
						<td><input type="text" name="user_tel"
							title='Phone Number (���ۂ̕\����: +090-9999-9999)'></td>
					</tr>



					<tr>

						<td>���[�T�[�� *</td>

						<td><input type="text" name="user_uname" value="" /></td>

					</tr>

					<tr>

						<td>�p�X���[�h *</td>

						<td><input type="password" name="user_pword" value=""
							maxlength=10></td>

					</tr>



					<tr>

						<td><input type="submit" value="����M����" /></td>

						<td><input type="reset" value="���X�g" /></td>

					</tr>

					<tr>

						<td colspan="2">���M���O!! <a href="../websakae/login.jsp">������
								����</a></td>

					</tr>

				</tbody>

			</table>

		</center>

	</form>

</body>

</html>
