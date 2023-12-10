<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/styles.css">

    <title>Proyecto Integrador Front | Camila Irupé Cuello</title>
</head>

<body>
	<jsp:include page="header.jsp"/>
    <main>
        <section id="speakers" class="container">
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
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus earum voluptates rerum ipsaaccusamus, voluptas totam expedita quae quaerat consequuntur molestias libero tenetur nulla, architecto ex! Dolore similique error alias.</p>
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
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate ex debitis tempora blanditiis quos, expedita ut harum est praesentium modi dolorem voluptas, aspernatur tempore perferendis vero hic dolores magni. Reiciendis!</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/img/AdaLovalace.jpeg" class="card-img-top" alt="Ada Lovelace" loading="lazy">
                        <div class="card-body p-5">
                            <div class="d-flex">
                                <h4 class="backgroundGray talkTopic">Negocios</h4>
                                <h4 class="ms-2 backgroundRed talkTopic">Startups</h4>
                            </div>
                            <h3 class="card-title mb-4">Ada Lovelace</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos nisi natus aliquam dolore nihil
                                harum
                                debitis aut tempora tempore earum, est nam voluptates accusantium quo culpa maxime asperiores at
                                placeat.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="placeAndDate" class="d-flex flex-column flex-lg-row w-100 gap-1">
            <div class="col-12 col-lg-6 placeAndDate__img"></div>
            <div class="col-12 col-lg-6 placeAndDate__info d-flex flex-column align-items-center align-items-lg-start text-center text-lg-start">
                <h2 class="mb-4">Bs As - Octubre</h2>
                <p class="mb-4">Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km<sup>2</sup> de superficie).</p>
                <a href="./pages/404.html" class="buttons transparentBtn p-2">Conocé más</a>
            </div>
        </section>
        <section id="speakerForm" class="text-center col-lg-6 offset-lg-3">
            <h2 class="speakerForm__h2"><div>CONVIÉRTETE EN UN</div>ORADOR</h2>
            <p>Anótate como orador para dar una <span>charla ignate</span>. ¡Cuéntanos de qué quieres hablar!</p>
            <form action="" class="speakerForm__form text-start">
                <div class="d-flex flex-column flex-lg-row gap-lg-5">
                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" class="my-3 w-100 p-3">
                    <input type="text" id="apellido" name="apellido" placeholder="Apellido" class="my-3 w-100 p-3">
                </div>
                <textarea name="" id="" class="w-100 mt-3">Sobre qué quieres hablar?</textarea>
                <p>Recuerda incluir un título para tu charla</p>
                <input type="submit" value="Enviar" class="w-100 buttons speakerForm__form__btn mt-3">
            </form>
        </section>
    </main>
    <jsp:include page="footer.jsp"/>

    <script src="./js/bootstrap.bundle.min.js"></script>
</body>

</html>