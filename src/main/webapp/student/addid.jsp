<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try{
	int ids = Integer.parseInt(request.getParameter("id"));
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conm= DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
    String qr="UPDATE login SET libId  Where lid='"+ids+"'";
    PreparedStatement pss= conm.prepareStatement(qr);
    
    int add=pss.executeUpdate();
    if(add==1){
    out.print("add id");
    }else{
    	out.print("not add");
    }
    }catch(Exception e){
    	System.out.print("error"+e);
    }
	%>

</body>
</html>