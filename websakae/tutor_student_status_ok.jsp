<%@page contentType="text/html; charset=Windows-31J"%>

<!DOCTYPE html>
<html >
<head>
  <title> Sakae　学校 welcome  <%=session.getAttribute("name")%> </title>
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
        					<li><a href="tutor_logout.jsp">ログアウト</a></li>
        					<li><a href="../websakae/tutor_login.jsp">戻る</a></li>
      					</ul>
    					</div>
  					</div>
				</nav>
			<br>
		<br>
<div class="container">
		<div class="jumbotron">
			<h2 align="center"> Update Successful  </h2>
    	
    	<h3 align="center"> チューター ページ!!<a href="../websakae/tutor_display_info_update"> 戻る</a> </h3> 
    	
    	</div>
       
      	</ul>
    	</div>
  		<div class="clearfix visible-lg"></div>    
  </div>
</div>

</body>
</html>
