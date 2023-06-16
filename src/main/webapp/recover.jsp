<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%
				try{
					String k = request.getParameter("cnt");
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info", "root", "");
					String getCont = "SELECT * FROM login WHERE email=?";
					PreparedStatement pst = con.prepareStatement(getCont);
					pst.setString(1, k);
					ResultSet rs = pst.executeQuery();
					if(rs.next()){
						%>
						<div class="alert alert-success alert-dismissible fade show" role="alert">
						  <strong>Hey!</strong> Your Account is reset.
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
						<%
					}else{
						%>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						  <strong>Hey!<% out.println("user = "+k); %> </strong> Your Details is not Registered in our records<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
						<%
					}
				}catch(Exception e){
					String redirectURL = "./erpage.jsp?error=Database_Error";
					response.sendRedirect(redirectURL);
				}
				%>