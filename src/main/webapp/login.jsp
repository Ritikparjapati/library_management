<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
try {
	String email = request.getParameter("email");
   	String pass =request.getParameter("password");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info", "root", "");
	String qry = "SELECT * from login where password=? and email=?";
	PreparedStatement ps = connection.prepareStatement(qry);
	ps.setString(1, pass);
	ps.setString(2, email);
	ResultSet rs = ps.executeQuery();
	if (rs.next()) {
		String user_type = rs.getString("usertype");
		if (user_type.equals("teacher")) {
			int ids = rs.getInt("id");
			session.setAttribute("user", ids);
			String redirectURL = "./admin/index.jsp";
			response.sendRedirect(redirectURL);

		} else if (user_type.equals("student")) {
	String redirectURL = "./student/index.jsp";
	response.sendRedirect(redirectURL);
		} else {
	String redirectURL = "./?login_error=invlaid_user";
	response.sendRedirect(redirectURL);
		}

	} else {
		String redirectURL = "./?login_error=user_not_found";
		response.sendRedirect(redirectURL);
	}

} catch (Exception e) {
	String redirectURL = "./erpage.jsp?error=Database_Error";
	response.sendRedirect(redirectURL);
}
%>