<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Spring MVC</title>
<link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/css/mystyle.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="col-lg-10 col-logo">
			<img alt="logo spring" src="${pageContext.request.contextPath}/public/images/logo.png">
			<h1>Bienvenidos al Instituto Español de Springfield</h1>
		</div>
		<div class="col-lg-12" style="margin-left: 100px">
			<h2>Sus datos</h2>
			<p>Nombre: ${student.name }</p>
			<p>Email: ${student.email }</p>
			<p>Genero: ${student.gender }</p>
			<p>Pais: ${student.country }</p>
			<p>Enhorabuena <strong>${student.name }</strong>, te has registrado correctamente.</p>
			<p>Los lenguales escogidos por ti son 
			<c:forEach var="fav" items="${student.favLanguages }">
				<strong><c:out value="${fav }">.</c:out></strong>
			</c:forEach></p>
			<p>Click en <a href="../index.jsp">index </a>para ir a la página principal</p>
		</div>
	</div>
</body>
</html>