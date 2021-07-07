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
		<br>
<div class="container">
		<div class="jumbotron">
			<h2 align="center"> Registration is Successful  </h2>
    	</div>
    	
    	<h3> ロギング!!<a href='../websakae/main_login_page.jsp'> こちら　から</a> </h3> 
    	
    	<div class="row">
    	    <div class="col-md-3">
      	<ul class="nav nav-pills nav-stacked">
        	<li class="active"><a href="../websakae/login.jsp">Home</a></li>
        	<li><a href="../websakae/main_login_page.jsp">TOP　戻る </a></li>
       
      	</ul>
    	</div>
  		<div class="clearfix visible-lg"></div>    
  </div>
</div>

</body>
</html>
