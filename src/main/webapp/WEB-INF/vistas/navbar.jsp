<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
				<!-- <li class="nav-item"><a class="nav-link" href="contacto.jsp">Contacto</a>
                </li> -->
			</ul>
		</div>

		<div>
			<div class="d-flex justify-content-between align-items-center">
				<core:if test="${pageContext.request.userPrincipal != null}">
					<p class="text-white-50 mx-3 my-2">
						Bienvenido <span class="fw-bold text-capitalize"><sec:authentication
								property="principal.username" /></span>
					</p>

					<form class="form-inline"
						action="${pageContext.request.contextPath}/logout" method="post">
						<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Cerrar
							sesión</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</core:if>
				<core:if test="${pageContext.request.userPrincipal == null}">
					<a class="btn btn-primary d-sm-none"
						href="${pageContext.request.contextPath}/login">Iniciar sesión</a>
					<form class="form-inline d-none d-sm-block"
						action="${pageContext.request.contextPath}/login" method="get">
						<button class="btn btn-primary my-2 my-sm-0" type="submit">Iniciar
							sesión</button>
					</form>
				</core:if>
			</div>
		</div>

	</div>
</nav>
