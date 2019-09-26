 <!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Spring MVC</title>
<link href="public/css/bootstrap.min.css" rel="stylesheet">
<link href="public/css/mystyle.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row col-logo">
			<div class="col-lg-4 col-md-5">
				<h1 style="text-align:right; margin-top: 80px;">Bienvenidos al Instituto</h1>
			</div>
			<div class="col-lg-1 col-md-2">
				<img alt="" src="${pageContext.request.contextPath}/public/images/bart-simpson.png">
			</div>
			<div class="col-lg-4 col-md-5">
				<h1 style="margin-top: 80px; margin-left: 30px;">Español de Springfield</h1>
			</div>
		</div>
		<div class="col-lg-12" style="margin-left: 100px">
			<h2>Menú</h2>
			<a href="student/goForm">Inscripción</a> 
		</div>
	</div>
</body>
</html>