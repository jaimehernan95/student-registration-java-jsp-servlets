<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import = "java.util.List, beansSakae.UserInfo"%>


<!DOCTYPE html>
<html >
<head>
  <title> Sakae　学校 welcome  </title>
	  	<meta http-equiv="Content-Type" content="text/html; charset= Windows-31J"%>
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Sakae　学校</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="../websakae/index.html">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="student_logout.jsp">ログアウト</a></li>
        <li><a href="../websakae/login.jsp">戻る</a></li>
      </ul>
    </div>
  </div>
</nav>
	
		<br>
<div class="container">
		<div class="jumbotron">
			<h2 align="center">  Sakae　学校  </h2>
    	</div>
    	
    	<h2> Welcome <%=session.getAttribute("user_uname")%></h2> 
    	
  <% 
  	List<UserInfo> list = (List<UserInfo>)request.getAttribute("list");
	UserInfo userinfo = list.get(0);
  
  %>		


		<table style="width:40%">
		<center>
  			<tr>
    			<td>user_id</td>
    			<td><%=userinfo.getUser_id()%></td>		
  			</tr>

 			<tr>
    			<td>user_uname</td>
    			<td><%=userinfo.getUser_uname()%></td>		
  			</tr>

			<tr>
    		<td>user_name</td>
    		<td><%=userinfo.getUser_name()%> </td>		
  			</tr>

  			<tr>
    		<td>user_nameKana</td>
    		<td><%=userinfo.getUser_nameKana()%> </td>		
  			</tr>

  			<tr>
    		<td>user_email</td>
    		<td><%= userinfo.getUser_email()%> </td>
  			</tr>

 			<tr>
    		<td>user_tel</td>
    		<td><%=userinfo.getUser_tel()%> </td>
  			</tr>

 			<tr>
    			<td>course_id</td>
    			<td><%=userinfo.getCourse_id()%></td>
  			</tr>

 			<tr>
    			<td>course_name</td>
    			<td> <%=userinfo.getCourse_name()%> </td>
  			</tr>
  			
  			<tr>
    			<td>password</td>
    			<td> <%=userinfo.getUser_pword()%> </td>
  			</tr>
  			<tr>
  			
  			<td><a href="../websakae/student_update_info?id=<%=userinfo.getUser_id()%>">Edit</a></td>
  			<td></td>
			</tr>
			</center>

		</table>

  		
  </div>
</div>

</body>
</html>