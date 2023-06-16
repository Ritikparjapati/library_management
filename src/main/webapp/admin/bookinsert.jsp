<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
 	String name = request.getParameter("bookname");
 
    String Detail = request.getParameter("Details");
    
 	String Author = request.getParameter("Author");
 	
String br = request.getParameter("branch");
    
 	String pc = request.getParameter("publication");

 	int Quantity = Integer.parseInt(request.getParameter("Quantity"));

 	try{
 		if( name.equals("") || Detail.equals("") || Author.equals("") ){
 			
 			
 			
 		} else {
 		
	 		Class.forName("com.mysql.cj.jdbc.Driver");
	 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
	 		String addStudent = "INSERT into book (book_name,author,details,quantity,branch,publication) values (?,?,?,?,?,?)";
	 		PreparedStatement preparedStatement = con.prepareStatement(addStudent);
	 		preparedStatement.setString(1, name);
	 		preparedStatement.setString(2, Detail);
	 		preparedStatement.setString(3, Author);
	 		preparedStatement.setString(5, br);
	 		preparedStatement.setString(6, pc);
	 		preparedStatement.setInt(4, Quantity);
	 		
	 		int addStu = preparedStatement.executeUpdate();
	 		
	 		if(addStu == 1){
	 			
	 			String redirectURL = "./AddBooks.jsp?username=addnewbook";
				response.sendRedirect(redirectURL);
	 		} else {
	 			String redirectURL = "./AddBooks.jsp?username=notaddnewbook";
				response.sendRedirect(redirectURL);
	 		}
 		
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