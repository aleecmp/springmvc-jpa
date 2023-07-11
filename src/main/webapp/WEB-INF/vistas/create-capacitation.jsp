<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Crear Capacitación - Nombre de la Empresa</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="<core:url value="/res/css/styles.css" />">
</head>

<body>
	<!-- navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- end navbar -->
	<div class="container mt-3">
		<h1 class="text-center">Crear Capacitación</h1>

		<div class="row justify-content-center mt-5">
			<div class="col-12 col-md-8 col-lg-6">
				<div class="custom-form-container">
					<form id="form-capacitation"
						action="${pageContext.request.contextPath}/create-capacitation"
						method="POST">

						<div class="mb-3">
							<label for="clientRut" class="form-label">RUT del
								Cliente:</label> <input type="text" class="form-control" id="clientRut"
								name="clientRut" placeholder="Ejemplo: 12.345.678-9" /> <small
								id="clientRutHelp" class="form-text text-danger"></small>
						</div>

						<div class="mb-3">
							<label for="day" class="form-label">Día:</label> <input
								type="date" class="form-control" id="day" name="day" /> <small
								id="dayHelp" class="form-text text-danger"></small>
						</div>

						<div class="mb-3">
							<label for="time" class="form-label">Hora:</label> <input
								type="time" class="form-control" id="time" name="time" /> <small
								id="timeHelp" class="form-text text-danger"></small>
						</div>

						<div class="mb-3">
							<label for="location" class="form-label">Lugar:</label> <input
								type="text" class="form-control" id="location" name="location"
								placeholder="Ejemplo: Sala de conferencias" /> <small
								id="locationHelp" class="form-text text-danger"></small>
						</div>

						<div class="mb-3">
							<label for="duration" class="form-label">Duración:</label> <input
								type="number" min="1" class="form-control" id="duration"
								name="duration" placeholder="Ingrese el número de horas" /> <small
								id="durationHelp" class="form-text text-danger"></small>
						</div>

						<div class="mb-3">
							<label for="attendeesCount" class="form-label">Cantidad
								de Asistentes:</label> <input type="number" min="1" class="form-control"
								id="attendeesCount" name="attendeesCount"
								placeholder="Ingrese la cantidad de asistentes" /> <small
								id="attendeesCountHelp" class="form-text text-danger"></small>
						</div>

						<button type="submit" class="btn btn-primary">Crear
							Capacitación</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
	<script src="<core:url value="/res/js/capacitationFormValidator.js" />"></script>
</body>
</html>