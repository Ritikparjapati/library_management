<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Information</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link href="./css/style.css" type="text/css" rel="stylesheet" media="all">
</head>
<body>
<jsp:include page="./includes/navbar.jsp"></jsp:include>

	
	
	<header>
		
	</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-6 p-5 mx-auto">
							<span class="text-danger p-3"><h1>Edit Password Here</h1></span>
							<div class="row">
								<div class="col-lg-12">
								
								
								
												<form action="./updatepassword.jsp" method="get">
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="password"  name="pass" placeholder="Enter current Password" required="required">
											  <label for="password">Enter Password</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="password"  name="pass" placeholder="Enter current Password" required="required">
											  <label for="password">Enter New Password</label>
											</div>
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="password"  name="pass" placeholder="Enter current Password" required="required">
											  <label for="password">Re-Enter New Password</label>
											</div>
											
											<div class="form-floating">
											  <input type="submit" class="btn btn-danger" value="Reset Password" />
											</div>
											
											
										</form>
							
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="./js/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
	<script>
		$(function(){
			
		});
	</script>	
</body>
</html>