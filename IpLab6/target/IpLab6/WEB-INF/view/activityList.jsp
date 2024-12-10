<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
        <title>Activity List</title>
        <style>
            body {
                background-color: #1a1d21;
                color: #fff;
                font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
                margin: 0;
                padding: 0;
            }
            .container {
                padding: 2rem 3rem;
            }
            h1 {
                font-size: 2.5rem;
                font-weight: 500;
                margin-bottom: 2rem;
                color: #ffffff;
            }
            .activity-list {
                width: 100%;
                border-spacing: 0 0.5rem;
                border-collapse: separate;
            }
            .activity-list th {
                text-align: left;
                color: #8b949e;
                font-weight: 400;
                font-size: 0.95rem;
                padding: 0.5rem 1rem;
                padding-left: 0;
            }
            .activity-list td {
                padding: 0.75rem 1rem;
                padding-left: 0;
                font-size: 0.95rem;
            }
            .activity-list tr:not(:last-child) td {
                border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            }
            .date {
                color: #8b949e;
            }
            .status {
                color: #8b949e;
            }
            .btn {
                border: none;
                border-radius: 4px;
                padding: 0.5rem 1rem;
                font-size: 0.9rem;
                cursor: pointer;
                transition: all 0.2s ease;
            }
            .btn-details {
                background: rgba(255, 255, 255, 0.1);
                color: #fff;
                margin-right: 0.5rem;
            }
            .btn-details:hover {
                background: rgba(255, 255, 255, 0.2);
            }
            .btn-join {
                background: #238636;
                color: #fff;
            }
            .btn-join:hover {
                background: #2ea043;
            }
            .no-column {
                width: 50px;
            }
            .date-column {
                width: 120px;
            }
            .title-column {
                width: 200px;
            }
            .location-column {
                width: 150px;
            }
            .status-column {
                width: 100px;
            }
            .actions-column {
                width: 220px;
            }
            .table-header {
                opacity: 0.7;
                font-size: 0.9rem;
            }
            .table-row {
                transition: background-color 0.2s ease;
            }
            .table-row:hover {
                background-color: rgba(255, 255, 255, 0.03);
            }
            /* Location Filter Styles */
            .filter-container {
                margin: 1.5rem 0 2rem 0;
            }
            .location-filter {
                background: rgba(255, 255, 255, 0.1);
                border: none;
                color: #fff;
                padding: 0.5rem 2rem 0.5rem 1rem;
                border-radius: 6px;
                font-size: 0.9rem;
                cursor: pointer;
                appearance: none;
                -webkit-appearance: none;
                background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='white' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
                background-repeat: no-repeat;
                background-position: right 0.7rem center;
                background-size: 1em;
            }
            .location-filter:focus {
                outline: none;
                box-shadow: 0 0 0 2px rgba(255, 255, 255, 0.2);
            }
            .location-filter option {
                background-color: #1a1d21;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Activity</h1>
            
            <div class="filter-container">
                <select class="location-filter" id="locationFilter">
                    <option value="all">All Locations</option>
                    <option value="johor">Johor</option>
                    <option value="johorBahru">Johor Bahru</option>
                    <option value="kulai">Kulai</option>
                    <option value="muar">Muar</option>
                    <option value="batuPahat">Batu Pahat</option>
                </select>
            </div>

            <table class="activity-list">
                <thead>
                    <tr class="table-header">
                        <th class="no-column">ID</th>
                        
                        <th class="title-column">Title</th>
                        
                        <th class="date-column">Date</th>
                        <th class="location-column">Location</th>
                        
                        <th class="actions-column">Actions</th>
                    </tr>
                </thead>
                <tbody>
				<c:forEach var="activity" items="${activityList}" varStatus="status">
			        <tr class="table-row">
			        	<th scope="row">${status.index + 1}</th>
			            <td>${activity.name}</td> 
			            <td class="date">${activity.date}</td>
			            <td>${activity.location}</td>
			            <td><button class="btn btn-details">See Details</button>
			           		<button class="btn btn-join">Join</button>
			            </td>
			            
			            <td></td> 
			        </tr>
				</c:forEach>
			</tbody>
            </table>
        </div>

        <script>
            document.getElementById('locationFilter').addEventListener('change', function() {
                const selectedLocation = this.value;
                const rows = document.querySelectorAll('.activity-list tbody tr');
                
                rows.forEach(row => {
                    const locationCell = row.querySelector('td:nth-child(4)');
                    if (selectedLocation === 'all' || locationCell.textContent.toLowerCase() === selectedLocation.replace(/([A-Z])/g, ' $1').toLowerCase().trim() || locationCell.textContent.toLowerCase() === "johor") {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                });
            });
        </script>
    </body>
</html>