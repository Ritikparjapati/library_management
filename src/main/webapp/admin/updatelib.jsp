<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	try{
		String ow = request.getParameter("owner");

		String ln = request.getParameter("libname");

			String lc = request.getParameter("con");

			String la = request.getParameter("add");
	
				int ids = Integer.parseInt(request.getParameter("lib_id"));
		
 		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
 		String addbook = "UPDATE library SET owner=?,name=?,contact=?,address=? WHERE id=?";
 		PreparedStatement preparedStatement = con.prepareStatement(addbook);
 		preparedStatement.setString(1, ow);
 		preparedStatement.setString(2, ln);
 		preparedStatement.setString(3, lc);
 		preparedStatement.setString(4, la);
 		preparedStatement.setInt(5, ids);

 		int addStu = preparedStatement.executeUpdate();
 		if(addStu == 1){
 			
 			String redirectURL = "./librarydetail.jsp?username=addnewbook";
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