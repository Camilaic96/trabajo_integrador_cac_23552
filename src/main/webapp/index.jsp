<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
       	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       	<link rel="stylesheet" href="css/styles.css">

        <title>Proyecto Final Java - Grupo 1</title>
    </head>

    <body>
        <header class="header headerHome">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid justify-content-between">
                    <a href="#" class="col-8 col-md-6 col-lg-4 col-xl-3 d-flex align-items-center">
                        <img src="./assets/img/logo_cac.png" alt="Logo de Codo a Codo 4.0" class="imgLogo"
                            loading="lazy" />
                        <h2 class="colorWhite fs-1">Conf Bs As</h2>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation" class="col-4">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul
                            class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-end flex-wrap align-items-center">
                            <li class="nav-item">
                                <a class="nav-link active p-3 fs-3" aria-current="page" href="#conference">La
                                    conferencia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link p-3 fs-3" href="#oradores">Los oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link p-3 fs-3" href="#placeAndDate">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link p-3 fs-3" href="#form-orador">Conviértete en orador</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link colorGreen p-3 fs-3" href="pages/comprar-tickets.jsp">Comprar
                                    tickets</a>
                            </li>
                            <li class="nav-item">
                                <a class="p-3 btn btn-dark fs-3" href="<%=request.getContextPath()%>/../integrador/pages/login.jsp">Iniciar sesión</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <section id="conference" class="d-flex align-items-center py-3">
                <div
                    class="conference__content d-flex flex-column justify-content-center align-items-center align-items-lg-end text-center text-lg-end col-lg-6 offset-lg-6">
                    <h1 class="p-3 mb-3">Conf Bs As</h1>
                    <p class="mb-5 p-5 p-lg-0">Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
                        comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet.
                        Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer
                        nivel que tenemos para ti. ¡Te esperamos!</p>
                    <div class="d-flex justify-content-evenly w-100 justify-content-lg-end gap-lg-4">
                        <a href="#form-orador" class="buttons transparentBtn">Quiero ser orador</a>
                        <a href="./pages/comprar-tickets.jsp" class="buttons greenBtn">Comprar tickets</a>
                    </div>
                </div>
            </section>
        </header>
        <main>
            <section id="oradores" class="container">
                <h2 class="text-center">
                    <div>CONOCE A LOS</div>ORADORES
                </h2>
                <div class="d-flex flex-wrap gap-2">
                    <div class="col">
                        <div class="card h-100">
                            <img src="./assets/img/SteveJobs.jpg" class="card-img-top" alt="Steve Jobs" loading="lazy">
                            <div class="card-body p-5">
                                <div class="d-flex">
                                    <h4 class="backgroundYellow talkTopic">JavaScript</h4>
                                    <h4 class="ms-2 backgroundBlue talkTopic">React</h4>
                                </div>
                                <h3 class="card-title mb-4">Steve Jobs</h3>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus
                                    earum voluptates rerum ipsaaccusamus, voluptas totam expedita quae quaerat
                                    consequuntur molestias libero tenetur nulla, architecto ex! Dolore similique error
                                    alias.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="./assets/img/BillGates.jpg" class="card-img-top" alt="Bill Gates" loading="lazy">
                            <div class="card-body p-5">
                                <div class="d-flex">
                                    <h4 class="backgroundYellow talkTopic">JavaScript</h4>
                                    <h4 class="ms-2 backgroundBlue talkTopic">React</h4>
                                </div>
                                <h3 class="card-title mb-4">Bill Gates</h3>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Cupiditate ex debitis tempora blanditiis quos, expedita ut harum est praesentium
                                    modi dolorem voluptas, aspernatur tempore perferendis vero hic dolores magni.
                                    Reiciendis!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="./assets/img/AdaLovalace.jpeg" class="card-img-top" alt="Ada Lovelace"
                                loading="lazy">
                            <div class="card-body p-5">
                                <div class="d-flex">
                                    <h4 class="backgroundGray talkTopic">Negocios</h4>
                                    <h4 class="ms-2 backgroundRed talkTopic">Startups</h4>
                                </div>
                                <h3 class="card-title mb-4">Ada Lovelace</h3>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos nisi
                                    natus aliquam dolore nihil
                                    harum
                                    debitis aut tempora tempore earum, est nam voluptates accusantium quo culpa maxime
                                    asperiores at
                                    placeat.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="container mb-4 text-center" id="restoOradores">
                <a class="btn btn-outline-success fs-3" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce
                    al resto de los ORADORES</a>
            </section>
            <section id="placeAndDate" class="d-flex flex-column flex-lg-row w-100 gap-1">
                <div class="col-12 col-lg-6 placeAndDate__img"></div>
                <div
                    class="col-12 col-lg-6 placeAndDate__info d-flex flex-column align-items-center align-items-lg-start text-center text-lg-start">
                    <h2 class="mb-4">Bs As - Octubre</h2>
                    <p class="mb-4">Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los
                        Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses.
                        Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu,
                        la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la
                        ciudad (aproximadamente 600 km<sup>2</sup> de superficie).</p>
                    <a href="./pages/error404.jsp" class="buttons transparentBtn p-2">Conocé más</a>
                </div>
            </section>
            <section class="text-center col-lg-6 offset-lg-3" id="form-orador">
                <h2 class="form-orador__h2">
                    <div>CONVIÉRTETE EN UN</div>ORADOR
                </h2>
                <p>Anótate como orador para dar una <span>charla ignate</span>. ¡Cuéntanos de qué quieres hablar!</p>
                <form action="<%=request.getContextPath()%>/CreateOradorController" method="POST"
                    class="form-orador__form text-start">
                    <div class="d-flex flex-column flex-lg-row gap-lg-5">
                        <input type="text" id="nombre" name="nombre" placeholder="Nombre"
                            class="my-3 w-100 p-3 form-control" aria-label="Nombre" required>
                        <input type="text" id="apellido" name="apellido" placeholder="Apellido"
                            class="my-3 w-100 p-3 form-control" aria-label="Apellido" required>
                    </div>
                    <div>
                    	<input type="email" class="form-control my-3 w-100 p-3" name="mail" placeholder="Email" aria-label="Email"
                                required>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4"
                                placeholder="Sobre qué quieres hablar?" required></textarea>
                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
                            <div class="d-grid">
                                <button type="submit" class="w-100 buttons form-orador__form__btn mt-3">Enviar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </main>
        <jsp:include page="./pages/footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    </body>

    </html>