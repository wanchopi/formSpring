<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Spring MVC</title>
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/css/mystyle.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row col-logo">
			<div class="col-lg-4">
				<h1 style="text-align:right; margin-top: 80px;">Bienvenidos al Instituto</h1>
			</div>
			<div class="col-lg-1">
				<img alt="" src="${pageContext.request.contextPath}/public/images/bart-simpson.png">
			</div>
			<div class="col-lg-4">
				<h1 style="margin-top: 80px; margin-left: 30px;">Español de Springfield</h1>
			</div>
		</div>
		
		<div class="col-lg-12">
		<div class="col-lg-9" style="margin-left: 250px;">
			<h2>Rellene el siguiente formulario</h2>
			<form:form action="processForm" modelAttribute="student">
				<p class="bg-dark text-white" style="margin-right: 300px;">Formulario Inscripción</p>
				<div class="row">
					<div class="col-lg-3">
						<div class="form-group">
							<label class="text-muted" for="name">Nombre</label>
							<form:input path="name" type="text" class="form-control" />
							<form:errors path="name" />
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
							<label class="text-muted" for="email">Email</label>
							<form:input path="email" type="email" class="form-control" />
							<form:errors path="email" />
						</div>
					</div>
				</div> <!-- /row -->
				<div class="row">
					<div class="col-lg-3">
						<div class="form-group">
							<label class="text-muted" for="password">Contraseña</label>
							<form:password path="password" class="form-control" />
							<form:errors path="password" />
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
							<label class="text-muted" for="password">Confirme Contraseña</label>
							<form:password path="password" class="form-control" />
							<form:errors path="password" />
						</div>
					</div>
				</div> <!-- /row -->
				<!-- radiobutton -->
				<div class="row" style="margin-top: 20px;">
					<div class="col-lg-1">
						<label class="text-muted" for="gender">Sexo</label>
					</div>
					<div class="col-lg-2">
						<form:radiobutton path="gender" value="Hombre"/>
						<label class="text-muted" for="male"><strong>Hombre</strong></label>
					</div>
					<div class="col-lg-2">
						<form:radiobutton path="gender" value="Mujer"/>
						<label class="text-muted" for="female"><strong>Mujer</strong></label>
					</div>
				</div> <!-- /row -->
				<!-- select -->
				<div class="row" style="margin-top: 20px;">
					<div class="col-lg-1">
						<label class="text-muted" for="country">Pais UE</label>
						<form:select path="country">
							<form:option value="NONE" label="--- Select ---"/>
							<form:options items="${countryList}" />
							<!--  
							<c:forEach items="${countryList}" var="country">
								<form:option value="${country }">
									<c:out value="${country }"></c:out>
								</form:option>
							</c:forEach>
							-->
						</form:select>
						<form:errors path="country" cssClass="error" />
					</div>
				</div> <!-- /row -->
				<!-- checkbox -->
				<p style="margin-top: 20px;">Escoga al menos dos lenguajes de programación</p>
				<div class="row" style="margin-bottom: 20px;">
					<c:forEach var="i" items="${languageList }">
						<div class="col-lg-2">
							<form:checkbox path="favLanguages" value="${i }"/>
							<label class="text-muted" for="male"><strong><c:out value="${i }"></c:out></strong></label> 
						</div>
					</c:forEach>
				</div>
				<button type="Submit" class="btn btn-primary" id="btn-submit-form">Enviar</button>
				<button type="reset" class="btn btn-success" id="btn-submit-form">Reset</button>
			</form:form>
			<p class="error-form">${error.toString() }</p>
		</div>	
		</div>
	</div>
</body>
</html>