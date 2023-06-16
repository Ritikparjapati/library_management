<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<link href="../css/all.min.css" type="text/css" rel="stylesheet" media="all" />
<link href="../css/style.css" type="text/css" rel="stylesheet" media="all">
</head>
<body>
	<jsp:include page="./includes/navbar.jsp"></jsp:include>



	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-5 p-5">
							<h1>ADD New Book</h1>
							<div class="row">
								<div class="col-lg-12">
									<form action="./bookinsert.jsp" method="post">
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="name" name="bookname" placeholder="Book Name" required="required">
								  <label for="name">Book Name</label>
								</div>
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="Detail" name="Details" placeholder="Book Details" required="required">
								  <label for="Detail">Detail</label>
								</div>
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="Author" name="Author" placeholder="Authpr Name" required="required">
								  <label for="Author">Author</label>
								</div>
								
								<div class="row ">
								<div class="col-lg-12 ">
								  <select class="form-select mb-3" name="publication" aria-label="Default select example">
									  <option>publication</option>
									  <option value="One">One</option>
									  <option value="Two">Two</option>
									  <option value="Three">Three</option>
									</select>
								</div>
								</div>
								<div class="row ">
								<div class="col-lg-12 ">
								  <select class="form-select mb-3" name="branch" aria-label="Default select example">
									  <option>Branch</option>
									  <option value="IT">IT</option>
									  <option value="CIVIL">CIVIL</option>
									  <option value="EC">EC</option>
									  <option value="ELECTRICAL">ELCTRICAL</option>
									</select>
								</div>
								</div>
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="Quantity" name="Quantity" placeholder="Quantity" required="required">
								  <label for="Quantity">Quantity</label>
								</div>
								
								<div class="form-floating">
								  <input type="submit" class="btn btn-danger" value="Add Book" />
								</div>
								
								
							</form>
								</div>
							</div>
						</div>
						<div class="col-lg-7 p-5">
						<div class="row">
						<div class="col-lg-12">
						<%
						try{
					    	String name=request.getParameter("n1");
					        Class.forName("com.mysql.cj.jdbc.Driver");
					        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
					        String qry="SELECT * from book";
					        PreparedStatement ps= conn.prepareStatement(qry);
					        ResultSet rs=ps.executeQuery();
					        %>
					        <table class="table table-bordered table-white border-danger">
						  <thead>
						    <tr>
						      <th scope="col">Sr.</th>
						      <th scope="col">Book Name</th>
						      <th scope="col">Author</th>
						      <th scope="col">Detail</th>
						      <th scope="col">quantity</th>
						      <th scope="col" colspan="4">Action</th>
						    </tr>
						  </thead>
						  
						  <tbody>
					        <%
					        int sr=1;
					        while(rs.next()){
					        	
					        	%>
					        		<tr>
								      <th scope="row"><%=sr %></th>
								      <td><% out.print(rs.getString("book_name")); %></td>
								      <td><% out.print(rs.getString("author")); %></td>
								      <td><% out.print(rs.getString("details")); %></td>
								      <td><% out.print(rs.getString("quantity")); %></td>
								      <td>
								      	<a href='./bookdlt.jsp?delete_book=<% out.print(rs.getInt("id")); %>' data-bs-toggle="tooltip" data-bs-title="Default tooltip" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
								      </td>
								      <td>
								      	<a href='./editbook.jsp?edit_book=<% out.print(rs.getInt("id")); %>' class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
								      </td>
								      <td>
								      	<a href='./editstudent.jsp?edit_studenz=<% out.print(rs.getInt("id")); %>' class="btn btn-secondary btn-sm"><i class="fa fa-user"></i></a>
								      </td>
								    </tr>
					        	<%					       
					        	sr++;
					        }
					        %>
					        </tbody>
						</table>
					        <%
						}catch(Exception e){
							out.println("Error="+e);
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
		const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
		const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
	});
</script>
</body>
</html>