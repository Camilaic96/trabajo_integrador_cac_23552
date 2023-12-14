<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>

<!doctype html>
<html lang="es">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/../integrador/css/styles.css">
	<title>Iniciar sesión</title>

</head>

<body>
	<jsp:include page="./header.jsp" />

	<main class="d-flex justify-content-center align-items-center text-center">
		<section class="mt-5 container" id="form-orador">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<img src="<%=request.getContextPath()%>/../integrador/assets/img/account-form.svg"
						class="img-fluid img-login" alt="account" loading="lazy">
					<form action="<%=request.getContextPath()%>/LoginAdminController" method="POST"
						class="form-orador__form">
						<div class="row justify-content-center">
							<div class="col-8">
								<input type="text" class="my-3 w-100 p-3 form-control" name="nombre"
									placeholder="Usuario" aria-label="Nombre" required>
							</div>
							<div class="col-8">
								<input type="password" class="my-3 w-100 p-3 form-control"" name=" password"
									placeholder="Contraseña" aria-label="Password" required>
							</div>
						</div>
						<div class="row justify-content-center">
							<div class="col-8 mt-3">
								<div class="d-grid">
									<button type="submit" class="buttons btn-login">Iniciar sesión</button>
								</div>
							</div>
						</div>
					</form>
					<% if (request.getAttribute("errorLogin") !=null) { %>
						<div class="row justify-content-center m-1">
							<div class="alert alert-danger col-8 my-3" role="alert">
								<%= request.getAttribute("errorLogin") %>
							</div>
						</div>
						<% } %>
				</div>
			</div>
		</section>
	</main>
	<jsp:include page="footer.jsp" />

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>

</html>