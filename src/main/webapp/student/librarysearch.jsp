<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
int j = Integer.parseInt(request.getParameter("cnt"));
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
String get = "SELECT * FROM library WHERE lid='"+j+"'";
PreparedStatement preparedStatement = con.prepareStatement(get);
	ResultSet rs = preparedStatement.executeQuery();
if(rs.next()){
	%>
	<div class="col-lg-7 p-5">
	<div class="row">
	<div class="col-lg-12">
	<%
	String mainuser = String.valueOf(session.getAttribute("user"));
	try{
    	String name=request.getParameter("n1");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_info","root","");
        String qry="SELECT * from library Where lid='"+j+"'";
        PreparedStatement ps= conn.prepareStatement(qry);
        ResultSet rss=ps.executeQuery();
        %>
        <table class="table table-bordered table-white border-danger" border="1">
	  <thead>
	    <tr>
	      <th scope="col">Sr.</th>
	      <th scope="col">Owner Name</th>
	      <th scope="col">Library Name</th>
	      <th scope="col">Contact</th>
	      <th scope="col">Address</th>
	      <th scope="col" colspan="3">Action</th>
	    </tr>
	  </thead>
	  <tbody>
        <%
        int sr=1;
        while(rss.next()){
        	
        	%>
        		<tr>
			      <th scope="row"><%=sr %></th>
			      <td><% out.print(rss.getString("owner")); %></td>
			      <td><% out.print(rss.getString("name")); %></td>
			      <td><% out.print(rss.getString("contact")); %></td>
			      <td><% out.print(rss.getString("address")); %></td>
			      <td>
			      	<a href='../admin/librarydlt.jsp?delete_lib=<% out.print(rss.getInt("id")); %>' data-bs-toggle="tooltip" data-bs-title="Default tooltip" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
			      </td>
			      <td>
			      	<a href="./addid.jsp"class="btn btn-info btn-sm">apply</a>
			   
			      </td>
			      
			    </tr>
        	<%					       
        	sr++;
        }
        %>
        </tbody>
	</table>
        <%
	} catch(Exception e){
		out.println("Error="+e);
	}
	%>

	</div>
	</div>
	</div>
	<%
} else{
		out.print("Wrong library id ");
}

%>	
<script>
		$(function() {
			$(".btn-sm").click(function() {
				alert("?");
			})
		});
	</script>
	
