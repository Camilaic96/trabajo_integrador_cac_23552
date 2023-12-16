<%@page import="ar.com.integrador.domain.Ticket" %>
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

	<title>Listado de tickets vendidos</title>
</head>

<body>
	<jsp:include page="./header.jsp" />
	<main>
		<section class="container mt-5 mb-4" id="tickets">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<h2 class="text-center mb-4">Lista tickets vendidos</h2>
					<table class="table table-auto">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col" class="col-1 ps-5">Cantidad</th>
								<th scope="col" class="col-2">Categoría</th>
								<th scope="col" class="col-2">Precio total</th>
								<th scope="col" class="col-2">Fecha</th>
								<th scope="col" class="col-3">Comprador</th>
							</tr>
						</thead>
						<%List<Ticket> listado = (List<Ticket>)request.getAttribute("listado");%>
								<tbody>
									<% for( Ticket unTicket : listado) { %>
										<tr>
											<th scope="row">
												<%=unTicket.getId()%>
											</th>
											<td class="ps-5">
												<%=unTicket.getCantidad() %>
											</td>
											<td>
												<%=unTicket.getCategoria() %>
											</td>
											<td>
												$ <%=unTicket.getPrecioTotal() %>
											</td>
											<td>
												<%=unTicket.getFechaCompra() %>
											</td>
											<td class="text-break">
												<%=unTicket.getMail() %>
											</td>
										</tr>
										<% } %>
								</tbody>
					</table>
				</div>
			</div>
		</section>
		<section class="d-flex justify-content-center mb-3">
			<button class="btn btn-success fs-3" onclick="btnVolver()">Volver</button>
		</section>		
	</main>
	
	<jsp:include page="footer.jsp" />
	<script src="./js/botones.js"></script>
</body>

</html>