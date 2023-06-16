<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	try{
		String name = request.getParameter("bookname");

		String author = request.getParameter("author");

			String detail= request.getParameter("details");

			int qua= Integer.parseInt(request.getParameter("quantity"));
	
				int ids = Integer.parseInt(request.getParameter("book_id"));
		
 		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
 		String addbook = "UPDATE book SET book_name=?,author=?,details=?,quantity=? WHERE id=?";
 		PreparedStatement preparedStatement = con.prepareStatement(addbook);
 		preparedStatement.setString(1, name);
 		preparedStatement.setString(2, author);
 		preparedStatement.setString(3, detail);
 		preparedStatement.setInt(4, qua);
 		preparedStatement.setInt(5, ids);

 		int addStu = preparedStatement.executeUpdate();
 		if(addStu == 1){
 			
 			String redirectURL = "./AddBooks.jsp?username=addnewbook";
			response.sendRedirect(redirectURL);
 		} else {
 			%>
				<h1>New Book NOT ADD</h1>
				<script>
					alert("Book Cannot be Add");
				</script>
			<%
 		}
		

	}catch(Exception e){
 		%>
		<h1><%= e.getMessage() %></h1>
		<script>
			alert("Database ERROR");
		</script>
	<%
 	}
%>