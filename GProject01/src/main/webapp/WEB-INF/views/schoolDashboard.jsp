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
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />"/>
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
	justify-content: flex-start;
}

.top-row-container {
	padding: 10px;
	display: flex;
	justify-content: space-between;
	flex-wrap:wrap;
	gap:10px;
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
}

.top-widgets {
	width: 300px;
	height: 100px;
	border-radius: 5px;
	background-color: green;
	padding: 10px;
}
#top-widgets-2-container{
background-color: purple;
}
#top-widgets-3-container{
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
	height: 40px;
	border-radius: 5px;
	background-color: #1B1F20;
	padding: 10px;
	display:flex;
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
    animation-name: auto-transform70;
}

#chart2 {
    animation-name: auto-transform80;
}

#chart3 {
    animation-name: auto-transform70;
}

/* Keyframes for auto-transform70 */
@keyframes auto-transform70 {
    0% {
        width: 25%;
        background-color: black;
    }
    10% {
        background-color: red;
    }
    30% {
        background-color: orange;
    }
    50% {
        background-color: rgb(255, 221, 0);
    }
    100% {
        width: 60%;
        background-color: rgb(255, 221, 0);
    }
}

/* Keyframes for auto-transform80 */
@keyframes auto-transform80 {
    0% {
        width: 25%;
        background-color: black;
    }
    10% {
        background-color: red;
    }
    30% {
        background-color: orange;
    }
    50% {
        background-color: rgb(255, 221, 0);
    }
    70% {
        background-color: rgb(167, 196, 20);
    }
    100% {
        width: 65%;
        background-color: rgb(167, 196, 20);
    }
}
</style>

<head>
<title>School Dashboard</title>
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
				<li><a href="/GProject01/youtubeManagement"><i class="bi bi-youtube"></i>YouTube</a></li>
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
					Adam Selamat <br> Skudai, Malaysia
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
						<h4>Total Students</h4>
						<h3>88 <i class="bi bi-person-fill"></i></h3>
					</div>
					<div class="top-widgets" id="top-widgets-2-container">
						<h4>Total Teachers</h4>
						<h3>8<i class="bi bi-person-fill"></i></h3>
					</div>
					<div class="top-widgets" id="top-widgets-3-container">
						<h4>Total Staff</h4>
						<h3>88 <i class="bi bi-person-fill"></i></h3>
					</div>
				</div>

				<div class="bottom-widgets-row-container">
					<div class="bottom-widgets-left-container">
						<h5>YouTube channel overview</h5>
						<div class="bottom-left-widgets">
							<h6>Subscribers</h6>
							<div class="chart" id="chart1">188</div>
						</div>
						<div class="bottom-left-widgets" >
							<h6>Total views</h6>
							<div class="chart" id="chart2">1696</div>
						</div>
						<div class="bottom-left-widgets">
							<h6>Total Uploads</h6>
							<div class="chart" id="chart3">6</div>
						</div>
					</div>
					<div class="bottom-widgets-right-container">
						<h5>TVPSS criteria</h5>
						<div class="bottom-right-widgets">
							<div>Logo</div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>Corner/Mini Studio/TV Studio</div>
							<div><i class="bi bi-check-circle-fill"></i></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>In-School Recording</div>
							<div><i class="bi bi-check-circle-fill"></i></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>Upload on YouTube</div>
							<div><i class="bi bi-check-circle-fill"></i></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>Recording Inside And Outside The School</div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>Collaborate With External Agencies</div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>Using Green Screen Technology</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>

</body>
</html>
