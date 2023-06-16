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
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-6 p-5 mx-auto">
							<h1>Edit Student Here</h1>
							<div class="row">
								<div class="col-lg-12">
								
								<%
									try{
									
										Class.forName("com.mysql.cj.jdbc.Driver");
								 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
								 		String getdetail = "SELECT * FROM login";
								 		PreparedStatement preparedStatement = con.prepareStatement(getdetail);
								 		ResultSet rs = preparedStatement.executeQuery();
										if(rs.next()){
								%>
								
												<form action="updateacc.jsp" method="get">
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="owner" value='<%= rs.getString("username") %>' name="owner" placeholder="user Name" required="required">
											  <input type="hidden" value='<%= rs.getString("id") %>' name="stu_id">
											 
											  <label for="owner">user Name</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="email" class="form-control" id="email" value='<%= rs.getString("email") %>' name="email" placeholder="email" required="required">
											  <label for="email">Email</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="conn" value='<%= rs.getString("contact") %>' name="contact" placeholder="contact" required="required">
											  <label for="conn">Contact</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="add" value='<%= rs.getString("password") %>' name="password" placeholder="password" required="required">
											  <label for="add">Password</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="add" value='<%= rs.getString("usertype") %>' name="type" placeholder="password" required="required">
											  <label for="add">Usertype</label>
											</div>
											
											
											<div class="form-floating">
											  <input type="submit" class="btn btn-danger" value="Update Detail" />
											</div>
											
										</form>
							<%
										}
									}catch(Exception e){
										out.println("ERROR = "+e.getMessage());
										
										
									}
							%>
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