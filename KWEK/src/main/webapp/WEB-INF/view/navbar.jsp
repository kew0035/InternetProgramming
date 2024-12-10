<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" onclick="location.reload();">Fitness Application</a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/KWEK/profile">Profile</a>
        </li>
        <c:if test="${client.role eq 'admin'}">
        <li class="nav-item">
          <a class="nav-link" href="/KWEK/clientList">Client List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/KWEK/addProgram">Add Program</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/KWEK/manageRoles">Manage Roles</a>
        </li>
        <li class="nav-item">
		  <a class="nav-link" href="/KWEK/programList">Program</a>
		 </li>
		 <li class="nav-item">
		  <a class="nav-link" href="/KWEK/login">Logout</a>
		 </li>
        </c:if>
        
        <c:if test="${client.role eq 'client'}">
		    <li class="nav-item">
		        <a class="nav-link" href="/KWEK/programList">Program</a>
		    </li>
		 <li class="nav-item">
		  <a class="nav-link" href="/KWEK/login">Logout</a>
		 </li>
		</c:if>
      </ul>
    </div>
  </div>
</nav>

   