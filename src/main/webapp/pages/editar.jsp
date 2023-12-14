<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>
<% Orador orador=(Orador)request.getAttribute("orador"); %>

<!doctype html>
<html lang="es">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<link rel="stylesheet" href="./css/styles.css">

	<title>Editar datos del orador</title>
</head>

<body>
	<jsp:include page="./header.jsp" />
	<main class="mb-5">
		<section class="container mt-5" id="form-orador">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<h2 class="text-center mb-3">Modificar datos del Orador</h2>
					<form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST"
						class="form-orador__form">
						<div class="row gx-2">
							<div class="col-md mb-3">
								<input type="hidden" name="id" value="<%=orador.getId()%>">
								<input type="text" class="form-control" name="nombre" placeholder="Nombre"
									aria-label="Nombre" id="validationCustom02"
									value="<%=orador.getNombre()%>" required>
							</div>
							<div class="col-md mb-3">
								<input type="text" class="form-control" name="apellido"
									placeholder="Apellido" aria-label="Apellido"
									value="<%=orador.getApellido()%>" required>
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<input type="email" class="form-control" name="mail" placeholder="Email"
									aria-label="Email" value="<%=orador.getMail()%>" required>
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<textarea class="form-control" name="tema" id="exampleFormControlTextarea1"
									rows="4" placeholder="<%=orador.getTema()%>"
									required><%=orador.getTema()%> </textarea>
								<div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para
									tu charla.</div>
								<div class="d-flex justify-content-between gap-3">
									<button type="submit"
										class="btn btn-form btn-success w-100 p-3 fs-3">Modificar</button>
									<button class="btn btn-danger w-100 p-3 fs-3" type="button"
										onclick="btnVolver()">Cancelar</button>
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
	<script src="./js/botones.js"></script>
</body>

</html>