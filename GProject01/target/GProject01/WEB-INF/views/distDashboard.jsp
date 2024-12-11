<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/style.css"  />
"/>
<html>
<style>
body {
	display: grid;
	grid-template-areas: "left-menu content";
	grid-template-rows: 1fr; /* Content */
	grid-template-columns: 180px 1fr; /* Left Menu, Content*/
	min-height: 100vh;
	background-color: black;
	margin: 0;
}

* {
	margin: 0;
	box-sizing: border-box;
	font-family: "SF Pro", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
		sans-serif;
	box-sizing: border-box;
}

main {
	grid-area: content;
	color: white;
	padding: 10px;
}

.logo {
	padding: 10px;
	text-align: center;
}

.left-menu {
	grid-area: left-menu;
	position: fixed;
	top: 0;
	left: 0;
	width: 180px; /* Set fixed width */
	height: 100vh; /* Full viewport height */
	background-color: #1B1F20;
	color: white;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	flex-direction: column;
}

.left-menu ul {
	list-style: none;
	padding: 0;
}

.left-menu a {
	text-decoration: none;
	display: block;
	text-align: left;
	color: gray;
	padding: 10px;
}

.left-menu a:hover {
	background-color: #2B2A2A;
	border: solid 1px;
	border-radius: 5px;
}

.left-menu a:active {
	background-color: #2B2A2A;
	color: #36BCBD;
	border: solid 1px;
	border-radius: 5px;
}

i {
	padding: 15px;
}

.search-container {
	justify-content: flex-start;
	width: 40%;
}

.top-row-container {
	padding: 10px;
	display: flex;
	justify-content: space-between;
}

.corner-container {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.corner-profile {
	font-size: 13px;
}

i.bi.bi-bell {
	font-size: 28px;
}

i.bi-person-circle {
	font-size: 23px;
}

.content {
	padding: 10px;
}

.widgets-container {
	display: flex;
	justify-content: space-between;
	padding: 10px;
	flex-direction: column;
}

.top-widgets-row-container {
	display: flex;
	justify-content: space-around;
	width: 100%;
	flex-wrap: wrap;
	gap: 10px;
}

.top-widgets {
	width: 300px;
	height: 100px;
	border-radius: 5px;
	background-color: green;
	padding: 10px;
}

#top-widgets-2-container {
	background-color: purple;
}

#top-widgets-3-container {
	background-color: navy;
}

.bottom-widgets-row-container {
	display: flex;
	justify-content: space-around;
	width: 100%;
	height: auto;
	padding: 20px 10px;
}

.bottom-widgets-left-container {
	width: 45%;
	height: auto;
	border-radius: 5px;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	flex-direction: column;
	gap: 20px;
}

.bottom-widgets-right-container {
	width: 55%;
	height: auto;
	border-radius: 5px;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	flex-direction: column;
	gap: 20px;
}

.bottom-left-widgets {
	width: 80%;
	height: 100px;
	border-radius: 5px;
	background-color: #1B1F20;
	padding: 10px;
	overflow: hidden;
}

.bottom-right-widgets {
	width: 80%;
	height: auto;
	border-radius: 5px;
	background-color: #1B1F20;
	padding: 10px;
	display: flex;
	justify-content: space-between;
	overflow: hidden;
}

.chart {
	height: 35px;
	font-size: small;
	font-weight: 600;
	margin: 10px 10px 10px 0;
	padding: 10px;
	border-radius: 10px;
	overflow: hidden;
	background-color: black; /* Initial background */
	width: 25%; /* Initial width */
	animation-duration: 4.5s;
	animation-iteration-count: 1; /* Runs once */
	animation-fill-mode: forwards; /* Retain final animation state */
}

/* Assign specific animations to charts */
#chart1 {
	background-color: red;
	animation-name: auto-transform70;
}

#chart2 {
	background-color: orange;
	animation-name: auto-transform100;
}

#chart3 {
	background-color: olive;
	animation-name: auto-transform80;
}

#chart4 {
	background-color: green;
	animation-name: auto-transform70;
}

/* Keyframes for auto-transform70 */
@
keyframes auto-transform70 { 0% {
	width: 25%;
	background-color: black;
}

100
%
{
width
:
60%;
}
}

/* Keyframes for auto-transform80 */
@
keyframes auto-transform80 { 0% {
	width: 25%;
	background-color: black;
}

100
%
{
width
:
65%;
    
}
}
@
keyframes auto-transform100 { 0% { /* Starting width */
	width: 25%;
	background-color: black;
}

100
%
{ /* Ending width */
width
:
75%;
}
}
.version {
	height: auto;
	width: auto;
	border-radius: 10px;
	border: solid 1px;
	padding: 1px 5px;
}

#version-1 {
	border: solid red;
	color: red;
}

#version-2 {
	border: solid orange;
	color: orange;
}

#version-3 {
	border: solid olive;
	color: olive;
}

#version-4 {
	border: solid green;
	color: green;
}
</style>

<head>
<title>District Dashboard</title>
</head>
<body>
	<nav class="left-menu">
		<div>
			<div class="logo">
				<h2>
					<b>TVPSS Central</b>
				</h2>
			</div>

			<ul>
				<li><a href=""><i class="bi bi-ui-checks-grid"></i> Home</a></li>
				<li><a href=""><i class="bi bi-chat-square-dots"></i>Messages</a></li>
				<li><a href=""><i class="bi bi-people"></i>Members</a></li>
				<li><a href=""><i class="bi bi-gear"></i>Settings</a></li>
				<li><a href=""><i class="bi bi-calendar"></i>Activity</a></li>
			</ul>
		</div>
		<div>
			<button type="button" class="btn btn-light">
				<i class="bi bi-box-arrow-right"></i> Log out
			</button>
		</div>
	</nav>

	<main>
		<div class="top-row-container">
			<div class="search-container">
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>

			<div class="corner-container">
				<div>
					<i class="bi bi-bell"></i>
				</div>
				<div class="corner-profile">
					Sadikon <br> Skudai, Malaysia
				</div>
				<div>
					<i class="bi bi-person-circle"></i>
				</div>

			</div>
		</div>


		<div class="content">
			<h2>${message}</h2>
			<div class="widgets-container">
				<div class="top-widgets-row-container">
					<div class="top-widgets" id="top-widgets-1-container">
						<h4>Total Schools</h4>
						<h3>
							56 <i class="bi bi-mortarboard-fill"></i>
						</h3>
					</div>
					<div class="top-widgets" id="top-widgets-2-container">
						<h4>Total Teachers</h4>
						<h3>
							1696<i class="bi bi-person-fill"></i>
						</h3>
					</div>
					<div class="top-widgets" id="top-widgets-3-container">
						<h4>Total Staff</h4>
						<h3>
							23 <i class="bi bi-person-fill"></i>
						</h3>
					</div>
				</div>

				<div class="bottom-widgets-row-container">
					<div class="bottom-widgets-left-container">
						<h5>${message}school TVPSS version overview</h5>
						<div class="bottom-left-widgets">
							<h6>Version 1</h6>
							<div class="chart" id="chart1">8</div>
						</div>
						<div class="bottom-left-widgets">
							<h6>Version 2</h6>
							<div class="chart" id="chart2">26</div>
						</div>
						<div class="bottom-left-widgets">
							<h6>Version 3</h6>
							<div class="chart" id="chart3">16</div>
						</div>
						<div class="bottom-left-widgets">
							<h6>Version 4</h6>
							<div class="chart" id="chart4">6</div>
						</div>
					</div>
					
					
					<div class="bottom-widgets-right-container">
						<h5>${message}Schools</h5>
						<div class="bottom-right-widgets school-info"
							data-school-name="SEKOLAH KEBANGSAAN (FELDA) BUKIT WAHA"
							data-school-version="Version 1">
							<div>SEKOLAH KEBANGSAAN (FELDA) BUKIT WAHA</div>
							<div class="version" id="version-1">Version 1</div>
						</div>


						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN BUKIT LINTANG</div>
							<div class="version" id="version-1">Version 1</div>
						</div>

						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN SEDILI BESAR</div>
							<div class="version" id="version-3">Version 3</div>
						</div>

						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN MAWAI</div>
							<div class="version" id="version-2">Version 2</div>
						</div>

						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN JOHOR KAMPONG</div>
							<div class="version" id="version-2">Version 2</div>
						</div>

						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN PANCHOR</div>
							<div class="version" id="version-4">Version 4</div>
						</div>

					</div>
				</div>
			</div>
		</div>

	</main>
	
	
	<!-- Modal HTML Structure (Place this right before </body>) -->
	<div class="modal fade" id="schoolModal" tabindex="-1"
		aria-labelledby="schoolModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="schoolModalLabel">School
						Information</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- Content will be dynamically inserted here -->
					<p id="schoolInfo">Loading school information...</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- JavaScript for handling the modal trigger (Place this right before </body>) -->
	<script>
		document
				.querySelectorAll('.school-info')
				.forEach(
						function(element) {
							element
									.addEventListener(
											'click',
											function() {
												var schoolName = element
														.getAttribute('data-school-name');
												var schoolVersion = element
														.getAttribute('data-school-version');

												// Update the modal content with the school information
												document
														.getElementById('schoolModalLabel').innerText = schoolName
														+ " Information";
												document
														.getElementById('schoolInfo').innerText = "This school is running "
														+ schoolVersion
														+ " version of TVPSS.";

												// Show the modal
												var myModal = new bootstrap.Modal(
														document
																.getElementById('schoolModal'));
												myModal.show();
											});
						});
	</script>

</body>
</html>
