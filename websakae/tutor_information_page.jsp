<%@page contentType="text/html; charset=Windows-31J"%>
<%@page import = "java.util.List, beansSakae.TutorInfo"%>
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
	
	<style>

	table {
    	width:100%;
		}
		table, th, td {
    	border: 1px solid black;
    	border-collapse: collapse;
		}
		th, td {
    	padding: 5px;
    	text-align: left;
		}
		table#t01 tr:nth-child(even) {
    	background-color: #eee;
		}
		table#t01 tr:nth-child(odd) {
   		background-color:#fff;
		}
		table#t01 th	{
    	background-color: RoyalBlue  ;
    	color: white;
		}
	</style>

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
        <li><a href="tutor_logout.jsp">ログアウト</a></li>
        <li><a href="../websakae/tutor_login.jsp">戻る</a></li>
      </ul>
    </div>
  </div>
</nav>
		<br>
<div class="container">
		<div class="jumbotron">
			<h2 align="center">  Sakae　学校  </h2>
    	</div>
    	
    	<h2> Welcome <%=session.getAttribute("tutor_uname")%></h2> 
    	
    	
       
  		
  <% 
  	List<TutorInfo> list = (List<TutorInfo>)request.getAttribute("list");
	TutorInfo tutorinfo = list.get(0);
	
	
  
  %>		


		<table id="t01" style="width:40%">
		<center>
  			<tr>
    			<td>tutor_id</td>
    			<td><%=tutorinfo.getTutor_id()%></td>		
  			</tr>

 			<tr>
    			<td>tutor_uname</td>
    			<td><%=tutorinfo.getTutor_uname()%></td>		
  			</tr>

			<tr>
    		<td>tutor_name</td>
    		<td><%=tutorinfo.getTutor_name()%> </td>		
  			</tr>

  			<tr>
    		<td>tutor_nameKana</td>
    		<td><%=tutorinfo.getTutor_nameKana()%> </td>		
  			</tr>

  			<tr>
    		<td>tutor_email</td>
    		<td><%= tutorinfo.getTutor_email()%> </td>
  			</tr>

 			<tr>
    		<td>tutor_tel</td>
    		<td><%=tutorinfo.getTutor_tel()%> </td>
  			</tr>

 			<tr>
    			<td>course_id</td>
    			<td><%=tutorinfo.getCourse_id()%></td>
  			</tr>

 			<tr>
    			<td>course_name</td>
    			<td> <%=tutorinfo.getCourse_name()%> </td>
  			</tr>
  			
  			<tr>
    			<td>password</td>
    			<td> <%=tutorinfo.getTutor_pword()%> </td>
  			</tr>
  			<tr>
  			
  			<td><a href="../websakae/tutor_update_info?id=<%=tutorinfo.getTutor_id()%>">Edit</a></td>
  			<td></td>
			</tr>
			</center>

		</table>
		
		<br>
		<br>
		<div class="jumbotron">
			<h3 align="center">Sakae 学生 - スイムレコード </h3>
    	</div>



		<form action= "../websakae/tutor_student_status" method="post">
		
				<table id="t01">
				  <tr>
    				<th>user_id</th>
    				<th>user_uname</th>
    				<th>user_name</th>		
    				<th>user_nameKana</th>
    				<th>user_email</th>
    				<th>user_tel</th>	
    				<th>course_id</th>		
    				<th>course_name</th>
     				<th>Student Status  </th>
			  </tr>
		
		<% 
  			List<UserInfo> list1 = (List<UserInfo>)request.getAttribute("list1");	
	 		for (int i = 0; i < list1.size(); i++) {
	  		UserInfo userinfo = list1.get(i);
  	
  		%>	
  
	
	
	


  	<tr>
    	<td><%=userinfo.getUser_id()%><input type="hidden" name="user_id<%=i%>" value="<%=userinfo.getUser_id()%>" </td>
    	
    	<td><%=userinfo.getUser_uname()%></td>	
    			
    	<td><%=userinfo.getUser_name()%></td>
    	
    	<td><%=userinfo.getUser_nameKana()%></td>
    	
    	<td><%=userinfo.getUser_email()%></td>
    	
    	<td><%=userinfo.getUser_tel()%> </td>
    	
    	<td><%=userinfo.getCourse_id()%></td>
    
    	<td><%=userinfo.getCourse_name()%> </td>
    	
	   <td> 
			<select name="studentstatus_<%=userinfo.getUser_id()%>">
                   			<option value="0">未確定 selected ><%=userinfo.getUser_status()%></option>
                   			<option value="1"> 合格 selected ><%=userinfo.getUser_status()%> </option>
                   			<option value="2"> 不合格 selected ><%=userinfo.getUser_status()%></option>
			</select>
			
			
			
			
  							 
		</td>
   
 	</tr>
 
 	<% }
	
	%> 
 
 			 <tr>

                        <td><input type="submit" value="更新" /></td>                        

                    </tr>
</table>
</form>
<br>

 <a href="" > Update</a> 
 <br>
 <br>
 
  		
  </div>
</div>
		
</body>
</html>