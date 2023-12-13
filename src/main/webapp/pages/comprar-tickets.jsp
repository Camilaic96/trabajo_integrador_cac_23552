<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/styles.css">

    <title>Comprar tickets</title>
</head>

<body>
	<jsp:include page="./header.jsp"/>
    <main class="p-5 mainTickets d-flex flex-column justify-content-center align-items-center col-md-10 offset-md-1 col-lg-8 offset-lg-2">
        <section class="d-flex flex-wrap justify-content-center align-items-center gap-5 gap-lg-2 w-100">
            <div class="card cardCategory border-blue">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1">Estudiante</h2>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">80%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
            <div class="card cardCategory border-lightblue">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1">Trainee</h2>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">50%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
            <div class="card cardCategory border-yellow">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1 ">Junior</h2>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">15%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
        </section>
        <h1 class="text-center text-uppercase my-3"><div>venta</div>valor de ticket $200</h1>
        <form action="" id="form-tickets" class="d-flex flex-column gap-4 p-3 p-xl-5 col-12 col-xl-9">
            <div class="d-flex flex-column flex-lg-row gap-3">
                <div class="w-100">
                    <input type="text" placeholder="Nombre" id="first_name" class="form-control w-100" required/>
                    <div class="invalid-feedback" id="error-firstName">
                        <p>Ingrese su nombre</p>
                    </div>
                </div>
                <div class="w-100">
                    <input type="text" placeholder="Apellido" id="last_name" class="form-control w-100" required/>
                    <div class="invalid-feedback" id="error-lastName">
                        <p>Ingrese su apellido</p>
                    </div>
                </div>
            </div>
            <div class="w-100">
                <input type="email" name="email" placeholder="Correo" id="email" class="form-control w-100" required/>
                <div class="invalid-feedback" id="error-email">
                    <p>Ingrese un correo válido</p>
                </div>
            </div>
            <div class="d-flex flex-column flex-lg-row gap-3 w-100">
                <div class="w-100">
                    <div class="d-flex flex-lg-column gap-3 w-100">
                        <label for="quantity" class="me-3 form-label">Cantidad</label>
                        <input type="number" name="quantity" id="quantity" placeholder="cantidad" class="form-control w-100" min="1" required>
                    </div>
                    <div class="invalid-feedback" id="error-quantity">
                        <p>Ingrese la cantidad de tickets</p>
                    </div>
                </div>
                <div class="d-flex flex-lg-column gap-3 w-100">
                    <label for="category" class="me-3 form-label">Categoría</label>
                    <select class="form-select" aria-label="Categoría" class="w-100" id="category">
                        <option value="" selected>--Seleccione una opción--</option>
                        <option value="0">Sin categoría</option>
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                    </select>
                    <div class="invalid-feedback" id="error-category">
                        <p>Elija una categoría</p>
                    </div>
                </div>
            </div>
            <p class="totalPrice p-3">Total a Pagar: $<span id="total"></span></p>
            <div class="d-flex gap-3">
                <button type="reset" id="btnDelete" class="btn btn-success w-100 p-3 fs-3">Borrar</button>
                <button type="button" id="btnPurchase" class="btn btn-success w-100 p-3 fs-3">Resumen</button>
            </div>
        </form>
    </main>
    <jsp:include page="footer.jsp" />
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
    <script src="../js/comprar-tickets.js"></script>
</body>

</html>