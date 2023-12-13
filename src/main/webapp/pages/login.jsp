<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>

<!doctype html>
<html lang="es">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/styles.css">
		<title>Iniciar sesi�n</title>
	</head>

	<body>
		<jsp:include page="./header.jsp" />

		<main class="d-flex justify-content-center align-items-center text-center">
			<section class="mt-5 container" id="form-orador">
				<div class="row justify-content-center">
					<div class="col-lg-8 col-xl-7">
						<img src="../assets/img/account-form.svg" class="img-fluid img-login" alt="Ada Lovelace" loading="lazy">
						<form action="<%=request.getContextPath()%>/LoginAdminController" method="POST" class="form-orador__form">
							<div class="row justify-content-center">
								<div class="col-8">
									<input type="text" class="my-3 w-100 p-3 form-control" name="nombre" placeholder="Usuario"
										aria-label="Nombre" required>
								</div>
								<div class="col-8">
									<input type="password" class="my-3 w-100 p-3 form-control"" name="password"
										placeholder="Contrase�a" aria-label="Password" required>
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-8 mt-3">
									<div class="d-grid">
										<button type="submit" class="buttons btn-login">Iniciar sesi�n</button>
									</div>
								</div>
							</div>
						</form>
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