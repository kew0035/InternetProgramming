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
<html>

<style>
body {
	display: grid;
	grid-template-areas: "left-menu content";
	grid-template-rows: 1fr; /* Content */
	grid-template-columns: 180px 1fr; /* Left Menu, Content*/
	min-height: 100vh;
	background-color: black;
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
	color: white;
	padding: 10px;
}

.logo {
	padding: 10px;
	text-align: center;
}

.left-menu {
	grid-area: left-menu;
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
	border-radius: 5%;
}

.left-menu a:active {
	background-color: #2B2A2A;
	color: #36BCBD;
	border: solid 1px;
	border-radius: 5%;
}

.logout-btn {
	align-items: center;
	border-radius: 5%;
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
</style>
<head>
<title>Student Dashboard</title>
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
					${message} <br> Skudai, Malaysia
				</div>
				<div>
					<i class="bi bi-person-circle"></i>
				</div>

			</div>
		</div>


		<div class="content">
			<h2>Welcome, ${message}!</h2>
		</div>

	</main>

</body>
</html>
