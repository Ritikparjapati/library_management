<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <% 
       	String ids = String.valueOf(session.getAttribute("user"));
       %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
							<h1>ADD NEW LIBRARY</h1>
							<div class="row">
								<div class="col-lg-12">
									<form action="./libraryinsert.jsp" method="post">
									
									<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="ONAME" name="owner" placeholder="Enter Owner Name" required="required">
								  <input type="hidden" value="<% out.print(ids); %>" name="userid" />
								  <label for="ONAME">Owner Name</label>
								</div>
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="LNAME" name="lbname" placeholder="Enter Library Name" required="required">
								  <label for="LNAME">Library Name</label>
								</div>
								
								
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="LCON" name="con" placeholder="Library Contact" required="required">
								  <label for="LCOn">Library Contact</label>
								</div>
								
								<div class="form-floating mb-3">
								  <input type="text" class="form-control" id="LADD" name="add" placeholder="Library Address" required="required">
								  <label for="LADD"> Library Address</label>
								</div>
								<div class="form-floating">
								  <input type="submit" class="btn btn-danger" value="Add library" />
								</div>
								</form>
								</div>
							</div>
							</div>
						<div class="col-lg-7 p-5">
						<div class="row">
						<div class="col-lg-12">
						<%
						String mainuser = String.valueOf(session.getAttribute("user"));
						try{
					    	String name=request.getParameter("n1");
					        Class.forName("com.mysql.cj.jdbc.Driver");
					        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
					        String qry="SELECT * from library Where userid='"+mainuser+"'";
					        PreparedStatement ps= conn.prepareStatement(qry);
					        ResultSet rs=ps.executeQuery();
					        %>
					        <table class="table table-bordered table-white border-danger">
						  <thead>
						    <tr>
						      <th scope="col">Sr.</th>
						      <th scope="col">Owner Name</th>
						      <th scope="col">Library Name</th>
						      <th scope="col">Contact</th>
						      <th scope="col">Address</th>
						      <th scope="col" colspan="3">Action</th>
						    </tr>
						  </thead>
						  
						  <tbody>
					        <%
					        int sr=1;
					        while(rs.next()){
					        	
					        	%>
					        		<tr>
								      <th scope="row"><%=sr %></th>
								      <td><% out.print(rs.getString("owner")); %></td>
								      <td><% out.print(rs.getString("name")); %></td>
								      <td><% out.print(rs.getString("contact")); %></td>
								      <td><% out.print(rs.getString("address")); %></td>
								      <td>
								      	<a href='./librarydlt.jsp?delete_lib=<% out.print(rs.getInt("id")); %>' data-bs-toggle="tooltip" data-bs-title="Default tooltip" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
								      </td>
								      <td>
								      	<a href='./editlib.jsp?edit_lib=<% out.print(rs.getInt("id")); %>' class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
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

</body>
</html>