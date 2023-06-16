<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Account</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<link href="./css/style.css" type="text/css" rel="stylesheet" media="all">
</head>
<body>
	<section class="vh-100" style="background-color: white;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://images.unsplash.com/photo-1494809610410-160faaed4de0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGVkdWNhdGV8ZW58MHx8MHx8&w=1000&q=80"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">


                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Library Management</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                  <form action="./createAccountfilter.jsp" method="post">
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="floatingInput" placeholder="Full Name" name="user" required>
						  <label for="floatingInput">Full name</label>
						</div>
					
						<div class="form-floating mb-3">
						  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email" required>
						  <label for="floatingInput">Email address</label>
						</div>
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="floatingInput" placeholder="+91-0000000000" name="mobile" required>
						  <label for="floatingInput">Contact Number</label>
						</div>
						<div class="form-floating mb-3">
						  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" required>
						  <label for="floatingPassword">Password</label>
						</div>
						
						<div class="form-check mb-3">
						  <input class="form-check-input" value="teacher" type="radio" name="user_type" id="flexRadioDefault1" required>
						  <label class="form-check-label" for="flexRadioDefault1">
						    Librarian
						  </label>
						</div>
						<div class="form-check mb-4">
						  <input class="form-check-input" value="student"  type="radio" name="user_type" id="flexRadioDefault2" required>
						  <label class="form-check-label" for="flexRadioDefault2">
						    Student
						  </label>
						</div>
		                  <div class="pt-1 mb-4">
		                    <button type="submit" class="btn btn-dark btn-lg btn-block" type="button">Create Account</button>
		                  </div>
		                  
		                  
		                  <%
		                  	if(request.getParameter("success") != null){
		                  		String server_res = request.getParameter("success");
		                  		if(server_res.equals("1")){
		                  			%>
		                  			<div class="alert alert-success alert-dismissible fade show" role="alert">
									  <strong>Hey! :)</strong> Your Account is Created.
									  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
									</div>
		                  			<%  
		                  		} 
		                  		else if(server_res.equals(0)){
		                  			%>
		                  			<div class="alert alert-warning alert-dismissible fade show" role="alert">
									  <strong>Sorry! :(</strong> Your cannot be created <br> Please Try Again later.
									  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
									</div>
		                  			<%  
		                  		}
		                  	}
		                  %>
		                  
                  </form>
				 <a class="small text-muted" href="./">Already have and account</a>
                

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="./js/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

	<script>
		$(function(){
			$(".btn-close").click(function(){
				window.location.href="./CreateneAccount.jsp";
			})
		});
	</script>

</body>
</html>