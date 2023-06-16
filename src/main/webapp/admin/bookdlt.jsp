<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	try{
		
		int user_id = Integer.parseInt(request.getParameter("delete_book")); 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
 		
 		String delete_Book_qry = "DELETE FROM book WHERE id='"+user_id+"'";
 		PreparedStatement preparedStatement = con.prepareStatement( delete_Book_qry);
 		
 		int i = preparedStatement.executeUpdate();
 		if(i==1){
			String redirectURL = "./AddBooks.jsp?username=deletebook";
			response.sendRedirect(redirectURL);
 		} else {
			String redirectURL = "./AddBooks.jsp?username=notdeletebook";
			response.sendRedirect(redirectURL);
 		}
		
	} catch(Exception e){
		
	}
%>