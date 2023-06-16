<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	try{
		String ow = request.getParameter("owner");

		String em = request.getParameter("email");

			String con = request.getParameter("contact");

			String pass = request.getParameter("password");
			
			String ut = request.getParameter("type");
	
				int ids = Integer.parseInt(request.getParameter("stu_id"));
		
 		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
 		String addbook = "UPDATE login SET username=?,email=?,contact=?,password=? usertype=? WHERE id=?";
 		PreparedStatement preparedStatement = conn.prepareStatement(addbook);
 		preparedStatement.setString(1, ow);
 		preparedStatement.setString(2, em);
 		preparedStatement.setString(3, con);
 		preparedStatement.setString(4, pass);
 		preparedStatement.setString(5, ut);
 		preparedStatement.setInt(6, ids);

 		int addStu = preparedStatement.executeUpdate();
 		if(addStu == 1){
 			
 			String redirectURL = "./index.jsp?username=addnewbook";
			response.sendRedirect(redirectURL);
 		} else {
 			%>
				
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