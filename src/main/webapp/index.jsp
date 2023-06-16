<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login JSP</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link href="./css/style.css" type="text/css" rel="stylesheet"
	media="all">
</head>
<body>
	<section class="vh-100" style="background-color: white;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img
									src="https://images.unsplash.com/photo-1494809610410-160faaed4de0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGVkdWNhdGV8ZW58MHx8MHx8&w=1000&q=80"
									alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 1rem;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<div class="d-flex align-items-center mb-3 pb-1">
										<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
										<span class="h1 fw-bold mb-0">Library Management</span>
									</div>

									<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login
										In Into your Account</h5>
									<form action="./login.jsp" method="post">

										<div class="form-floating mb-3">
											<input type="email" class="form-control" id="floatingInput"
												name="email" placeholder="name@example.com"> <label
												for="floatingInput">Email address</label>
										</div>
										<div class="form-floating mb-3">
											<input type="password" class="form-control"
												id="floatingPassword" name="password" placeholder="Password">
											<label for="floatingPassword">Password</label>
										</div>

										<div class="pt-1 mb-4">
											<button type="submit" class="btn btn-dark btn-lg btn-block">Login</button>

										</div>
										<%
										if (request.getParameter("login_error") != null) {
											String server_res = request.getParameter("login_error");
											if (server_res.equals("user_not_found")) {
										%>
										<div class="alert alert-danger alert-dismissible fade show"
											role="alert">
											<strong>Hey! :()</strong> Please Check Your Email OR
											password.
											<button type="button" class="btn-close"
												data-bs-dismiss="alert" aria-label="Close"></button>
										</div>
										<%
										} else if (server_res.equals("invlaid_user")) {
										%>
										<div class="alert alert-warning alert-dismissible fade show"
											role="alert">
											<strong>Sorry! :(</strong> Entered Details is not Registered
											in our Records.
											<button type="button" class="btn-close"
												data-bs-dismiss="alert" aria-label="Close"></button>
										</div>
										<%
										} else if (server_res.equals("Invalid Access")) {
										%>
										<div class="alert alert-warning alert-dismissible fade show"
											role="alert">
											<strong>Hey Bro! :(</strong> Please Login First to access
											into your Account.
											<button type="button" class="btn-close"
												data-bs-dismiss="alert" aria-label="Close"></button>
										</div>
										<%
										}
										}
										%>
									</form>
									<a class="small text-muted" href="#!" data-bs-toggle="modal"
										data-bs-target="#staticBackdrop">Forgot password?</a>
									<p class="mb-5 pb-lg-2" style="color: #393f81;">
										Don't have an account? <a href="./CreateneAccount.jsp"
											style="color: #393f81;">Register here</a>
									</p>
									<a href="#!" class="small text-muted">Terms of use.</a> <a
										href="#!" class="small text-muted">Privacy policy</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Recover Your
						Account</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12 mb-3">
							<p>Enter Your register Email or contact number to recover you
								Account.</p>
						</div>

						<div class="col-lg-12">
							<div class="form-floating mb-3">
								<input type="text" class="form-control user-data"
									id="floatingInput">
									placeholder="Enter Register Email or Mobile Number Here">
								<label for="floatingInput">Enter Register Email or
									Mobile Number Here</label>
							</div>
							<div class="dd mb-3 cont"></div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary checkUser">Reset
							Account</button>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script src="./js/jquery-3.6.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
	<script>
		$(function() {
			$(".btn-close").click(function() {
				window.location.href = "./index.jsp";
			})
		});
	</script>


	<script>
		$(function() {
			$(".checkUser").click(function() {

				let b = $(".user-data").val();
				$.ajax({
					url : "./recover.jsp",
					data : {
						"cnt" : b
					},
					success : function(result) {
						$(".cont").html(result);
					}

				});
			});
		});
	</script>
</body>
</html>