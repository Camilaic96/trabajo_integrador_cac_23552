<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/styles.css">

	<title>Página no encontrada</title>
</head>

<body>
	<jsp:include page="./header.jsp" />
	<main class="d-flex flex-column flex-lg-row justify-content-around align-items-center mainError404 text-center">
		<div>
			<h1>Error 404 - Página no encontrada</h1>
			<p><a href="../index.jsp">Vuelve al inicio</a> o <a href="#">contáctate con nuestro equipo</a></p>
		</div>
		<div class="img-error404">
			<img src="../assets/img/exclamation.png" alt="Signo de exclamación - Error 404" class="img-fluid">
		</div>
	</main>
	<jsp:include page="footer.jsp" />

</body>

</html>