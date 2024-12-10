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

.top-widgets-row-container{
	display: flex;
	justify-content:space between;
}
.top-widgets-left-container {
	width:60%;
	display: flex;
	justify-content:center;
	align-items: flex-end; /* Align charts at the bottom */
}
.vert-container{
	height:200px;
	transform: rotate(180deg); /* Flip the entire chart */
}
.top-widgets-right-container {
	width:40%;
	display: flex;
	justify-content:center;
	flex-direction: column;
	flex-wrap:wrap;
}
.legend-container{
	display: flex;
	justify-content:space between;
	gap:10px;
	align-items:center;
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
	height: auto;
	border-radius: 5px;
	background-color: #1B1F20;
	padding: 20px;
	overflow: hidden;
}
.bottom-right-widgets {
	width: 80%;
	height: auto;
	border-radius: 5px;
	background-color: #3a3a3a;
	padding: 10px;
	display:flex;
	justify-content: space-between;
	overflow: hidden;
}


.vert-chart {
	width: 40px;
    font-size: small;
    font-weight: 600;
    margin: 10px 10px 0 0;
    padding: 10px;
    border-radius: 10px;
    overflow: hidden;
    background-color: black; /* Initial background */
    height: 0%; /* Initial width */
    animation-duration: 4.5s;
    animation-iteration-count: 1; /* Runs once */
    animation-fill-mode: forwards; /* Retain final animation state */
    display: flex;
    align-items: flex-end; /* Align the text at the bottom of the bar */
    justify-content: center; /* Center the text */
    color: white; /* Ensure text is visible */
    transform: rotate(-180deg); /* Un-flip the text */
}
#vert-chart1 {
	background-color: red;
    animation-name: vert-transform70;
}

#vert-chart2 {
	background-color: orange;
    animation-name: vert-transform100;
}

#vert-chart3 {
	background-color: olive;
    animation-name: vert-transform80;
}
#vert-chart4 {
	background-color: green;
    animation-name: vert-transform70;
}


/* Keyframes for auto-transform70 */
@keyframes vert-transform70 {
    0% {
        height: 0%;
        background-color: black;
    }

    100% {
        height: 60%;
    }
}
/* Keyframes for auto-transform80 */
@keyframes vert-transform80 {
    0% {
        height: 0%;
        background-color: black;
    }

    100% {
        height: 65%;
    }
}
@keyframes vert-transform100{
    0% {  /* Starting width */
        height: 0%;
        background-color: black;
     }
    100% {  /* Ending width */
        height: 75%; 
}
}

.version{
	height: 20px;
	width: 20px;
	border-radius:10px;
	margin:5px;
}
#version-1{
	background-color:red;
}
#version-2{
	background-color:orange;
}
#version-3{
	background-color:olive;
}
#version-4{
	background-color:green;
}

.bottom-left-widgets:hover{
	transform: scale(1.1);
	transition: transform 0.3s ease;
	box-shadow: 5px 5px 5px 5px rgba(0.25,0.25,0.25,0.25);
}
.bottom-right-widgets:hover{
	transform: scale(1.1);
	transition: transform 0.3s ease;
	box-shadow: 5px 5px 5px 5px rgba(0.25,0.25,0.25,0.25);
}
</style>

<head>
<title>JPNJ Dashboard</title>
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
					Fakrul <br> Skudai, Malaysia
				</div>
				<div>
					<i class="bi bi-person-circle"></i>
				</div>

			</div>
		</div>


		<div class="content">
			<h2>Management Information System - ${message}</h2>
			<div class="widgets-container">
			<div class="top-widgets-row-container">
				<div class="top-widgets-left-container">
					<div class="vert-container" >
						<div class="vert-chart" id="vert-chart1">20%</div>
					</div>
					<div class="vert-container">
						<div class="vert-chart" id="vert-chart2">40%</div>
					</div>
					<div class="vert-container" >
						<div class="vert-chart" id="vert-chart3">25%</div>
					</div>
					<div class="vert-container" >
						<div class="vert-chart" id="vert-chart4">15%</div>
					</div>
				</div>
				<div class="top-widgets-right-container">
					<div class="legend-container">
						<div class="version" id="version-1"></div>
					 	<div>version 1</div>
					 </div>
					<div class="legend-container">
						<div class="version" id="version-2"></div>
						<div>version 2</div>
					</div>
					<div class="legend-container">
						<div class="version" id="version-3"></div>
					 	<div>version 3</div>
					 </div>
					<div class="legend-container">
						<div class="version" id="version-4"></div>
						<div>version 4</div>
					</div>
				</div>
				</div>

				<div class="bottom-widgets-row-container">
					<div class="bottom-widgets-left-container">
						<h5>${message} districts</h5>
						<div class="bottom-left-widgets" style="background-color:#3a3a3a;">
							<h6>Skudai</h6>
						</div>
						<div class="bottom-left-widgets" >
							<h6>Kulai</h6>
						</div>
						<div class="bottom-left-widgets">
							<h6>Segamat</h6>
						</div>
						<div class="bottom-left-widgets">
							<h6>Muar</h6>
						</div>
					</div>
					<div class="bottom-widgets-right-container">
						<h5>Skudai Schools</h5>
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN (FELDA) BUKIT WAHA</div>
							<div class="version" id="version-1"></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN BUKIT LINTANG</div>
							<div class="version" id="version-1"></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN SEDILI BESAR</div>
							<div class="version" id="version-3"></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN MAWAI</div>
							<div class="version" id="version-2"></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN JOHOR KAMPONG</div>
							<div class="version" id="version-2"></div>
						</div>
						
						<div class="bottom-right-widgets">
							<div>SEKOLAH KEBANGSAAN PANCHOR</div>
							<div class="version" id="version-4"></div>
						</div>
						
					</div>
				</div>
			</div>
		</div>

	</main>

</body>
</html>
