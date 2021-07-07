<%@page contentType="text/html; charset=Windows-31J"%>

<!DOCTYPE">
<html>
<head>
  <title> ログアウト <%=session.getAttribute("user_uname")%> </title>
	  	<meta http-equiv="Content-Type" content="text/html; charset= Windows-31J"%>
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head

<body>
<div class="container">
		<div class="jumbotron">
		<% session.invalidate(); %>
			 <h3 align = "center">You have been successfully logout</p></h3>
    	</div>

    <h3 align = "center"><a href="../websakae/main_login_page.jsp"> TOP　戻る</a></h3>
</body>
</html>