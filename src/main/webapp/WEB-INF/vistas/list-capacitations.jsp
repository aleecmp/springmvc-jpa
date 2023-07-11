<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="<core:url value='/res/css/styles.css' />" />
<title>Listado Capacitaciones</title>
</head>
<body>
	<!-- Navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- End Navbar -->
	<div class="container mt-5">
		<h1 class="text-center">Lista Capacitaciones</h1>

		<div class="table-responsive">
			<table class="table table-striped table-bordered display">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">Rut Cliente</th>
						<th scope="col">Día</th>
						<th scope="col">Hora</th>
						<th scope="col">Lugar</th>
						<th scope="col">Duración</th>
						<th scope="col">Cantidad de Asistentes</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<core:forEach var="capacitation" items="${capacitations}">
						<tr>
							<td>${capacitation.getId()}</td>
							<td>${capacitation.getClientRut()}</td>
							<td>${capacitation.getDay()}</td>
							<td>${capacitation.getTime()}</td>
							<td>${capacitation.getLocation()}</td>
							<td>${capacitation.getDuration()}</td>
							<td>${capacitation.getAttendeesCount()}</td>
						</tr>
					</core:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- script bootstrap -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>