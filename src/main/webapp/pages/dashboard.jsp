<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>

<!doctype html>
<html lang="es">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/styles.css">

	<title>Dashboard</title>
</head>

<body>
	<jsp:include page="./header.jsp" />

	<main>
		<section class="container mt-5 mb-4" id="restoOradores">
			<h2 class="titulo-gral">Conoce todos los oradores que se presentan</h2>
			<div class="row">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Nombre</th>
							<th scope="col">Apellido</th>
							<th scope="col">Tema</th>
						</tr>
					</thead>
					<% //codigo java //obtener el listado desde el request //se guardo bajo el nombre de "listado"
					List<Orador> listado = (List<Orador>)request.getAttribute("listado");
							%>
							<tbody>
								<!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
								<% for( Orador unOrador : listado) { %>
									<tr>
										<th scope="row">
											<%=unOrador.getId()%>
										</th>
										<td>
											<%=unOrador.getNombre() %>
										</td>
										<td>
											<%=unOrador.getApellido() %>
										</td>
										<td>
											<%=unOrador.getTema() %>
										</td>
										<td><a class="btn btn-info" role="button"
												href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">
												Editar
											</a> |
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-danger" data-bs-toggle="modal"
												data-bs-target="#exampleModal"
												onclick="setOradorId(<%=unOrador.getId()%>)">
												Eliminar
											</button>
										</td>
									</tr>
									<% } %>
							</tbody>
				</table>
			</div>
		</section>
	</main>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="<%=request.getContextPath()%>/DeleteOradorController">
					<input type="hidden" name="idOrador" id="idOrador">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						¿Confirma que desea eliminar?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-danger">Eliminar</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
		function setOradorId(id) {
			document.getElementById('idOrador').value = id;
		}
	</script>
</body>

</html>