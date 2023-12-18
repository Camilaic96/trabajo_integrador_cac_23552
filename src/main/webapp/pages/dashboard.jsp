<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/../integrador/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous">
    <link rel="stylesheet" href="./css/styles.css">

    <title>Dashboard</title>
</head>

<body>
    <jsp:include page="./header.jsp" />
    <main class="p-5">
        <section class="mt-5 d-flex flex-column flex-lg-row justify-content-center align-items-center gap-3">
            <h3 class="text-center me-3">Encontra tus oradores favoritos por sus temas: </h3>
            <form id="searchForm" class="d-flex" action="<%=request.getContextPath()%>/BuscarOradorTemaController?origin=dashboard" method="post">
                <input class="form-control me-2 fs-4" name="temabuscar" id="temabuscar" type="search" placeholder="Escribí un tema" aria-label="Buscar">
                <input class="btn btn-outline-success fs-4" type="submit" value="Buscar">
            </form>
        </section>
		<section class="container my-4 text-center">
            <button type="reset" id="btnDeleteSearch" class="btn btn-danger fs-4" onclick="borrarFiltro()">Borrar filtro</button>
        </section>
        <section class="container mt-5 mb-4" id="restoOradores">
            <h2 class="text-center mb-4">Conoce todos los oradores</h2>
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col" class="col-2">Nombre</th>
                                <th scope="col" class="col-2">Apellido</th>
                                <th scope="col" class="col-5">Tema</th>
                                <th scope="col" class="col-2"></th>
                            </tr>
                        </thead>
                        <% List<Orador> listado = (List<Orador>) request.getAttribute("listado");
                                for (Orador unOrador : listado) {
                                %>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="align-middle">
                                            <%=unOrador.getId()%>
                                        </th>
                                        <td class="align-middle">
                                            <%=unOrador.getNombre() %>
                                        </td>
                                        <td class="align-middle">
                                            <%=unOrador.getApellido() %>
                                        </td>
                                        <td class="text-break align-middle">
                                            <%=unOrador.getTema() %>
                                        </td>
                                        <td class="text-end align-middle">
                                            <a class="btn btn-info fs-4 my-1" role="button"
                                                href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">
                                                Editar
                                            </a> |
                                            <button type="button" class="btn btn-danger fs-4 my-1"
                                                data-bs-toggle="modal" data-bs-target="#exampleModal"
                                                onclick="setOradorData(<%=unOrador.getId()%>, '<%=unOrador.getNombre() %>', '<%=unOrador.getApellido() %>')">
                                                Eliminar
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                                <% } %>
                    </table>
                </div>
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
                        <h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador <span id="apellidoOrador"></span>, <span id="nombreOrador"></span></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ¿Confirma que desea eliminar?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary fs-4"
                            data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-danger fs-4">Eliminar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="./js/botones.js"></script>
    <script>
        function setOradorData(id, nombre, apellido) {
            document.getElementById('idOrador').value = id;
            document.getElementById('nombreOrador').innerHTML = nombre;
            document.getElementById('apellidoOrador').innerHTML = apellido;
        }
    </script>
</body>

</html>