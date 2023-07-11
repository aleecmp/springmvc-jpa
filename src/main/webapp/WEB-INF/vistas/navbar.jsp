<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>

<nav class="navbar navbar-expand-lg navbar-dark">
	<div class="container-fluid">

		<a class="navbar-brand" href="<core:url value='/' />">PreventionJpa</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="true"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li
					class="nav-item ${pageContext.request.servletPath == '/home.jsp' ? 'active' : ''}">
					<a class="nav-link" href="<core:url value='/' />">Inicio</a>
				</li>
<!-- 				<li class="nav-item"><a class="nav-link" href="contacto.jsp">Contacto</a> -->
<!-- 				</li> -->
			</ul>
			<%-- 			<c:if test="${not empty sessionScope.usuario}"> --%>
			<!-- 				<p class="mx-3 mt-3 text-light"> -->
			<%-- 					Bienvenido(a) <span class="fw-bold text-capitalize">${sessionScope.usuario}</span> --%>
			<!-- 				</p> -->
			<!-- 				<form class="form-inline" action="ServletLogout" method="post"> -->
			<!-- 					<button class="btn my-2 my-sm-0 btn-logout" type="submit">Cerrar -->
			<!-- 						sesión</button> -->
			<!-- 				</form> -->
			<%-- 			</c:if> --%>
		</div>
	</div>
</nav>