<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="<core:url value='/res/css/styles.css' />" />
<title>Home</title>
</head>

<body>
	<!-- Navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- End Navbar -->
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div
				class="card col-12 col-sm-8 col-md-4 col-lg-4 m-2 custom-card-container">
				<img src="<core:url value='/res/images/College-Student-PNG.png' />"
					class="card-img-top mt-2" alt="Imagen 1">
				<div class="card-body">
					<div class="d-flex justify-content-center">
						<a href="<core:url value='/create-capacitation' />">
							<button class="btn btn-card btn-primary btn-lg">Crear
								capacitación</button>
						</a>
					</div>
				</div>
			</div>
			<div
				class="card col-12 col-sm-8 col-md-4 col-lg-4 m-2 custom-card-container">
				<img
					src="<core:url value='/res/images/cathryn-lavery-fMD_Cru6OTk-unsplash.jpg' />"
					class="card-img-top mt-2" alt="Imagen 2">
				<div class="card-body">
					<div class="d-flex justify-content-center">
						<a href="<core:url value='/list-capacitations' />">
							<button class="btn btn-card btn-primary btn-lg">Listar
								capacitaciones</button>
						</a>
					</div>
				</div>
			</div>

		</div>

	</div>

	<!-- 	script bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
	<!-- End script bootstrap -->
</body>

</html>