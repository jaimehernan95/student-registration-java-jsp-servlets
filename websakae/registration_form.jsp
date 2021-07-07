<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import="java.util.List, beansSakae.Course"%>
<%@page import="java.util.List, beansSakae.UserInfo"%>

<!DOCTYPE html>

<html>

<head>
<title>学校 登録</title>
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
			<h2 align="center">学校 登録</h2>
		</div>
	</div>

	<form method="post" action="../websakae/registration">



		<center>

			<table border="1" width="30%" cellpadding="5">

				<thead>

					<tr>

						<th colspan="2">*は必須項目です</th>

					</tr>

				</thead>

				<tbody>

					<tr>

						<td>お名前 *</td>

						<td><input type="text" name="user_name" value="" /></td>

					</tr>


					<tr>

						<td>フリガナ *</td>

						<td><input type="text" name="user_nameKana" value="" /></td>

					</tr>



					<tr>

						<td>コース *</td>
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

						<td>メールアドレス *</td>

						<td><input type="text" name="user_email" value="" /></td>

					</tr>


					<tr>

						<td>電話番号 *</td>
						<td><input type="text" name="user_tel"
							title='Phone Number (実際の表示例: +090-9999-9999)'></td>
					</tr>



					<tr>

						<td>ユーサー名 *</td>

						<td><input type="text" name="user_uname" value="" /></td>

					</tr>

					<tr>

						<td>パスワード *</td>

						<td><input type="password" name="user_pword" value=""
							maxlength=10></td>

					</tr>



					<tr>

						<td><input type="submit" value="送る信する" /></td>

						<td><input type="reset" value="リスト" /></td>

					</tr>

					<tr>

						<td colspan="2">ロギング!! <a href="../websakae/login.jsp">こちら
								から</a></td>

					</tr>

				</tbody>

			</table>

		</center>

	</form>

</body>

</html>
