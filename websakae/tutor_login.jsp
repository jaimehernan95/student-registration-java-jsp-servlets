<%@page contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE html>

<html>
  	<head>
 	 <title>���M���O�`���[�^�[ <%=session.getAttribute("name")%> </title>
	  	<meta http-equiv="Content-Type" content="text/html; charset= Windows-31J"%>
  		
  		<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   		 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   			<style>
				.center {
    				margin-left: auto;
    				margin-right: auto;
    				width: 30%;
    				
    			
						}
			</style>
	</head>
	<body>
    		<nav class="navbar navbar-inverse navbar-fixed-top">
  				<div class="container-fluid">
    			<div class="navbar-header">
      					<a class="navbar-brand" href="#">Sakae�@�w�Z</a>
    			</div>
    					<div>
      				 	<ul class="nav navbar-nav">
        					<li class="active"><a href="../websakae/index.html">Home</a></li>
        					<li><a href="tutor_logout.jsp">���O�A�E�g</a></li>
        					<li><a href="../websakae/tutor_login.jsp">�߂�</a></li>
      					</ul>
    					</div>
  					</div>
				</nav>
			<br>
			<br>
				<div class="jumbotron">
					<h2 align="center"> �`���[�^�[���M���O </h2>
    			</div>
		
			<div class="container">
    			</div>
    		<div class="center">
        <form method="post" action="../websakae/tutor_login_page_code">
			
		<div class="form-group">
          		<label for="tutor_uname">���[�U�[�� </label>
         		 <input type="text" name ="tutor_uname" class="form-control" id="tutor_uname" placeholder="���[�U�[�� ">
       		 </div>
        <div class="form-group">
         	 	<label for="user_pword">�p�X���[�h:</label>
         		 <input type="password" name ="tutor_pword" class="form-control" id="tutor_pword" placeholder="�p�X���[�h">
        </div>
         <div class="checkbox">
          		<label><input type="checkbox"> �ۑ����� </label>
        </div>
        		<button type="submit" class="btn btn-default">����M����</button>
				<button type="submit" class="btn btn-default">���X�g</button>
				
		<div class="form-group">
				<label><p> �o�^!! <a href="../websakae/courseDAO?admintype=2">������@���� </p></label>
		</div>
		
        </form>
		</div>
    
	</body>


</html> 