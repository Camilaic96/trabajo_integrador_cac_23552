<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">
	<head>
	  <meta charset="UTF-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">       	
      <link rel="stylesheet" href="${process.cwd()}/../integrador/css/styles.css">
	
	  <title>Listado de oradores</title>
	</head>
	<body>
		<jsp:include page="./header.jsp"/>	
		<main>
			<section class="mt-5 d-flex flex-column flex-lg-row justify-content-center align-items-center gap-3">
			    <h3 class="text-center me-3">Encontra tus oradores favoritos por sus temas: </h3>
			    <form class="d-flex" action="<%=request.getContextPath()%>/BuscarOradorTemaController?origin=listado" method="post">
			        <input class="form-control me-2 fs-4" name="temabuscar" id="temabuscar" type="search" placeholder="Escribí un tema" aria-label="Buscar">
			        <input class="btn btn-outline-success fs-4" type="submit" value="Buscar">
			    </form>
			</section>
			<section class="container mt-5 mb-4" id="restoOradores">
			    <div class="row justify-content-center">
			        <div class="col-lg-8">
			            <h2 class="text-center mb-4">Conoce todos los oradores</h2>
			            <table class="table table-auto">
		                <thead>
		                  <tr>
		                    <th scope="col">#</th>
				            <th scope="col" class="col-3">Nombre</th>
				            <th scope="col" class="col-3">Apellido</th>
				            <th scope="col" class="col-6">Tema</th>
		                  </tr>
		                </thead>
		                 <% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
					 	 %>
		                <tbody>
			                 <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
						   <%
						   	for( Orador  unOrador : listado) {
						   %>
		                  <tr>
		                    <th scope="row"><%=unOrador.getId()%></th>
		                    <td class="text-break"><%=unOrador.getNombre() %></td>
		                    <td class="text-break"><%=unOrador.getApellido() %></td>
		                    <td class="text-break"><%=unOrador.getTema() %></td>
		                  </tr>
		                   <%
					   		}
					  	   %>
		                </tbody>
		              </table>
		        </div>

    	  </section>
    	  <section class="d-flex justify-content-center mb-3">
				<button class="btn btn-success fs-3" onclick="btnVolver()">Volver</button>
			</section>		
		</main>
		<jsp:include page="footer.jsp"/>
		
		<script src="./js/botones.js"></script>
</body>
</html>