<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<link href="../css/all.min.css" type="text/css" rel="stylesheet" media="all" />
<link href="../css/style.css" type="text/css" rel="stylesheet" media="all" >

</head>
<body>

	
	<jsp:include page="./includes/navbar.jsp"></jsp:include>
	
<div class="container d-flex justify-content-center mt-5">
			
				<div class="col-lg-5 p-5">
	<div class="nav-item mt-3">
     <input class="form-control me-2 srch mb-3" type="text" >
        <button class="btn btn-outline-success cont" type="button">Search</button>
        
      
   </div></div></div>
   
  	<div id="op">
  	</div>

<script src="../js/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>


</body>
<script>
		$(function() {
			$(".cont").click(function() {
				let b = $(".srch").val();
				$.ajax({
					url : "./librarysearch.jsp",
					data : {
						"cnt" : b
					},
					success : function(result) {
						$("#op").html(result);
					}

				});
			});
		});
	</script>
</html>