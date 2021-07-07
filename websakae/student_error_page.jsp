<%@page contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE >
<html>

<head>
  <title> エラーSakae　学校 welcome  <%=session.getAttribute("name")%> </title>
	  	<meta http-equiv="Content-Type" content="text/html; charset= Windows-31J"%>
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>
<center><p style="color:red">Sorry, your record is not available.</p></center>
<%
getServletContext().getRequestDispatcher("login.html").include(request, response);
%>
</body>
</html>