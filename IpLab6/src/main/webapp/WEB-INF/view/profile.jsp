<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<section style="background-color: #eee; min-height: 100vh;">
	  <div class="container py-5">
	    <div class="row">
	      <div class="col-lg-4">
	        <div class="card mb-4">
	          <div class="card-body text-center">
	            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
	              class="rounded-circle img-fluid" style="width: 150px;">
	            <h5 class="my-3">${client.name}</h5>
	            <p class="text-muted mb-1">${client.role}</p>
	          </div>
	        </div>
	        <div class="card mb-4 mb-lg-0">
	          <div class="card-body p-0">
	            <ul class="list-group list-group-flush rounded-3">
	              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
	              	<div class="col-sm-4">
	                	<p class="mb-0"><strong>Height</strong></p>
		            </div>
		            <div class="col-sm-8">
		               	<p class="text-muted mb-0"> ${client.height} m</p>
		            </div>
	              </li>
	              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
	              	<div class="col-sm-4">
	                	<p class="mb-0"><strong>Weight</strong></p>
		            </div>
		            <div class="col-sm-8">
		               	<p class="text-muted mb-0"> ${client.weight} kg</p>
		            </div>
	              </li>
	              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
	              	<div class="col-sm-4">
	                	<p class="mb-0"><strong>BMI</strong></p>
		            </div>
		            <div class="col-sm-8">
		               	<p class="text-muted mb-0"> ${client.bmi}</p>
		            </div>
	              </li>
	              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
	              	<div class="col-sm-4">
	                	<p class="mb-0"><strong>BMI Category</strong></p>
		            </div>
		            <div class="col-sm-8">
		               	<p class="mb-0 ${client.className}"> ${client.bmiCategory} </p>
		            </div>
	              </li>
	            </ul>
	          </div>
	        </div>
	      </div>
	      <div class="col-lg-8">
	        <div class="card mb-4">
	          <div class="card-body">
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Full Name</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${client.name}</p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Email</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">${client.email}</p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Phone</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">(097) 234-5678</p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Address</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">Bay Area, San Francisco, CA</p>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-6">
	            <div class="card mb-4 mb-md-0">
	              <div class="card-body">
	                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
	                </p>
	                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
	                <div class="progress rounded" style="height: 5px;">
	                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
	                    aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
	                <div class="progress rounded" style="height: 5px;">
	                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
	                    aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
	                <div class="progress rounded" style="height: 5px;">
	                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
	                    aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
	                <div class="progress rounded" style="height: 5px;">
	                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
	                    aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
	                <div class="progress rounded mb-2" style="height: 5px;">
	                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
	                    aria-valuemin="0" aria-valuemax="100"></div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>