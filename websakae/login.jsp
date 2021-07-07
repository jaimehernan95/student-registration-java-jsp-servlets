<%@page contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE html>

<html>
  	<head>
 	 <title>���M���O IT�w�� <%=session.getAttribute("name")%> </title>
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
	<br>
	<br>
	<div class="jumbotron">
	<h2 align="center"> ���M���O �w�� </h2>
	</div>
	<div class="container">
	</div>
	<div class="center">


	<form method="post" action="../websakae/login_page_code">
        <div class="form-group">
          		<label for="user_uname">���[�U�[�� </label>
         		 <input type="text" name ="user_uname" class="form-control" id="user_uname" placeholder="���[�U�[�� ">
       		 </div>
        <div class="form-group">
         	 	<label for="user_pword">�p�X���[�h:</label>
         		 <input type="password" name ="user_pword" class="form-control" id="user_pword" placeholder="�p�X���[�h">
        </div>
         <div class="checkbox">
          		<label><input type="checkbox"> �ۑ����� </label>
        </div>
        		<button type="submit" class="btn btn-default">����M����</button>
				<button type="submit" class="btn btn-default">���X�g</button>
				
		<div class="form-group">
				<label><p> �o�^!! <a href="../websakae/courseDAO?admintype=1">������@���� </p></label>
		</div>
		
        </form>
		</div>
    
	</body>


</html> 