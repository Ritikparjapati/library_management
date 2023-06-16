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

	
	
	<header>
		<nav class="navbar navbar-expand-lg bg-light">
 			 <div class="container">
		    <a class="navbar-brand" href="#"><b>Library Management System<b></a>
		
		  </div>
		</nav>
	</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-6 p-5 mx-auto">
							<h1>Edit Book Here</h1>
							<div class="row">
								<div class="col-lg-12">
								
								<%
									try{
										
										String stuString = request.getParameter("edit_book");
								 		
										Class.forName("com.mysql.cj.jdbc.Driver");
								 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
								 		
								 		String getbook = "SELECT * FROM book WHERE id='"+stuString+"'";
								 		
								 		PreparedStatement preparedStatement = con.prepareStatement(getbook);
								 		ResultSet rs = preparedStatement.executeQuery();
										if(rs.next()){
											
								%>
								
												<form action="./updatebook.jsp" method="get">
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="bookname" value='<%= rs.getString("book_name") %>' name="bookname" placeholder="Book Name" required="required">
											  <input type="hidden" value='<%= rs.getString("id") %>' name="book_id"">
											 
											  <label for="bookname">Book Name</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="author" value='<%= rs.getString("author") %>' name="author" placeholder="Author" required="required">
											  <label for="author">Author</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="details" value='<%= rs.getString("details") %>' name="details" placeholder="Enter detsils" required="required">
											  <label for="details">details</label>
											</div>
											
											<div class="form-floating mb-3">
											  <input type="text" class="form-control" id="quantity" value='<%= rs.getInt("quantity") %>' name="quantity" placeholder="Enter quantity" required="required">
											  <label for="quantity">quantity</label>
											</div>
											<div class="form-floating">
											  <input type="submit" class="btn btn-danger" value="change Book" />
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