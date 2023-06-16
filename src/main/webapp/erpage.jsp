<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
		width: 100%;
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column ;
	}
	h1{
	font-weight: 100;
	letter-spacing: 5px;
	font-style: italic;
	text-align: center;
	}
	
	p{
		letter-spacing: 5px;
		text-align: center;
	}
	p span{
		color: #F00;
	}
	p a{
	color: #F00;
		text-decoration: none;
	}
</style>
</head>
<body>

	<h1>
		Opp's Soemthing Goes Wrong.
	</h1>
	<p>
		<%
			if(request.getParameter("error") != null){
				String data = request.getParameter("error");
				if(data.equals("Database_Error")){
					%>
						<span>Error => </span>DATABASE ERROR <br> Server Not Responding
					<% 		
				}
				
			} 
		
		%>
	</p>
	<p>
		Go to Home Page
		<a href="./">Click Here</a>
	</p>
</body>
</html>