<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	try{
		
		int user_id = Integer.parseInt(request.getParameter("delete_lib")); 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
 		
 		String delete_lib_qry = "DELETE FROM library WHERE id='"+user_id+"'";
 		PreparedStatement preparedStatement = con.prepareStatement( delete_lib_qry);
 		
 		int i = preparedStatement.executeUpdate();
 		if(i==1){
			String redirectURL = "./librarydetail.jsp?username=deletebook";
			response.sendRedirect(redirectURL);
 		} else {
			String redirectURL = "./librarydetail.jsp?username=notdeletebook";
			response.sendRedirect(redirectURL);
 		}
		
	} catch(Exception e){
		
	}
%>