<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
 
 	String name = request.getParameter("user");
 
	String email = request.getParameter("email");

 	String mobile = request.getParameter("mobile");
 	
 	String pass = request.getParameter("password");
 	
 	String type = request.getParameter("user_type");
 	
 	
 	
    
 	

 	try{
 			Class.forName("com.mysql.cj.jdbc.Driver");
	 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
	 		String addStudent = "INSERT into login (username,contact,email,password,usertype) values (?,?,?,?,?)";
	 		PreparedStatement preparedStatement = con.prepareStatement(addStudent);
	 		preparedStatement.setString(1, name);
	 		preparedStatement.setString(3, email);
	 		preparedStatement.setString(2, mobile);
	 		preparedStatement.setString(4, pass);
	 		preparedStatement.setString(5, type);
	 		
	 		
	 		int addStu = preparedStatement.executeUpdate();
	 		
	 		if(addStu == 1){
	 			
	 		    String redirectURL = "./CreateneAccount.jsp?success=1";
	 		    response.sendRedirect(redirectURL);
	
	 		} else {
	 			String redirectURL = "./CreateneAccount.jsp?success=0";
	 		    response.sendRedirect(redirectURL);
	 		}
	
 	}catch(Exception e){
	 		String redirectURL = "./erpage.jsp?error=Database_Error";
	response.sendRedirect(redirectURL);
	 	}
	 	
 	

 	
 %>