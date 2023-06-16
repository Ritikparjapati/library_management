<nav class="navbar navbar-expand-lg bg-light">
  <div class="container">
    <a class="navbar-brand">Library Management System <span class="text-danger p-3">Teacher Panel</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            books
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="./AddBooks.jsp">Add Books</a></li>
            <li><a class="dropdown-item" href="">books Details</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Setting
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="./librarydetail.jsp">Library Details</a></li>
            <li><a class="dropdown-item" href="./accountdetail.jsp">Account Details</a></li>
            <li><a class="dropdown-item" href="">Delete Account</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search Books Here" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
        
      </form>
      
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
       <li class="nav-item">
      
          <a class="nav-link active" aria-current="page" href="./logout.jsp"> Logout</a>
        </li>
        </ul>
      
    </div>
    
  </div>
</nav>