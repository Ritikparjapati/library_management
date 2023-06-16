<%@page import="java.util.Random"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 
 	String ow = request.getParameter("owner");
 
    String ln = request.getParameter("lbname");
    
String conn = request.getParameter("con");
    
 	String add = request.getParameter("add");
 	int ids = Integer.parseInt(request.getParameter("userid"));
 
 	Random random = new Random();
 	int libid = random.nextInt(999*9999);

 	try{
 		if(ow.equals("") || ln.equals("") || conn.equals("") || add.equals("") ){
 			
 			
 			
 		} else {
 		
	 		Class.forName("com.mysql.cj.jdbc.Driver");
	 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
	 		String addStudent = "INSERT into library (owner,name,contact,address,userid,lid) values (?,?,?,?,?,?)";
	 		PreparedStatement preparedStatement = con.prepareStatement(addStudent);
	 		preparedStatement.setString(1, ow);
	 		preparedStatement.setString(2, ln);
	 		preparedStatement.setString(3, conn);
	 		preparedStatement.setString(4,add);
	 		preparedStatement.setInt(5,ids);
	 		preparedStatement.setInt(6, libid);
	 	
	 		
	 		int addStu = preparedStatement.executeUpdate();
	 		
	 		if(addStu == 1){
	 			
	 			String redirectURL = "./librarydetail.jsp?username=addnewbook";
				response.sendRedirect(redirectURL);
	 		} else {
	 			String redirectURL = "./librarydetail.jsp?username=notaddnewbook";
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