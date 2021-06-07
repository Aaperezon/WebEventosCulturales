<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TecTicket - by Aaron&Andrea</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/img/icon.png" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/styleModal.css" rel="stylesheet" />
    <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>
    <script src="js/scriptModal.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/usuario.js" /></script>
</head>
<body id="page-top">
<!-- Navigation-->
<a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand"><a href="#page-top">Start Bootstrap</a></li>
        <li class="sidebar-nav-item"><a href="#page-top">Home</a></li>
        <li class="sidebar-nav-item"><a href="#about">About</a></li>
        <li class="sidebar-nav-item"><a href="#services">Services</a></li>
        <li class="sidebar-nav-item"><a href="#portfolio">Portfolio</a></li>
        <li class="sidebar-nav-item"><a href="#contact">Contact</a></li>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#logInModal" >Iniciar Sesión </button>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createAccountModal" >Crear Cuenta </button>

        <div class="modal fade" id="logInModal" tabindex="-1" aria-labelledby="logInModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logInModalLabel">Iniciar Sesión</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="logInModal" aria-label="Close"></button>
                    </div>
                    <form class="needs-validation" method="POST" action="login">
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="validationCustom01" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="validationCustom01"  name="attemptedUser" required>
                            </div>
                            <div class="mb-3">
                                <label for="validationCustom02" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="validationCustom02" name="attemptedPassword" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="logInModal">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="createAccountModal" tabindex="-1" aria-labelledby="createAccountModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="createAccountModalLabel">Crear Cuenta</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="createAccountModal" aria-label="Close"></button>
                    </div>
                    <form class="needs-validation" method="POST" action="signup" oninput='newPasswordConfirmation.setCustomValidity(newPassword.value != newPasswordConfirmation.value ? "Las contraseñas no coinciden." : "")'>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="validationCustom03" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="validationCustom03"  name="newUser" required>
                            </div>
                            <div class="mb-3">
                                <label for="validationCustom04" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="validationCustom04"  name="newPassword" required>
                            </div>
                            <div class="mb-3">
                                <label for="validationCustom05" class="form-label">Confirma Contraseña</label>
                                <input type="password" class="form-control" id="validationCustom05"  name="newPasswordConfirmation" required>
                            </div>
                            <div class="mb-3">
                                <label for="validationCustom06" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="validationCustom06" name="newName" required>
                            </div>
                            <div class="mb-3">
                                <label for="validationCustom07" class="form-label">Apellidos</label>
                                <input type="text" class="form-control" id="validationCustom07" name="newLastName" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="createAccountModalLabel">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Crear Cuenta</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </ul>
</nav>
<!-- Header-->
<header class="masthead d-flex align-items-center text-white">
    <div class="container px-4 px-lg-5 text-center">
        <h1 class="mb-1">TecTicket</h1>
        <h3 class="mb-5"><em>¿Cómo deseas ingresar?</em></h3>

        <!-- Button trigger modal Invidato -->
        <button type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/DuRF0Jh7SCk" data-target="#myModal">
            Invitado
        </button>
        <!-- Button trigger modal Organizador-->
        <button type="button" class="btn btn-primary video-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/xXKx8Kbzi9A" data-target="#myModal">
            Organizador
        </button>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">


                    <div class="modal-body">

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</header>



<!-- About-->
<section class="content-section bg-light" id="about">
    <div class="container px-4 px-lg-5 text-center">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-10">
                <h2>TecTicket es la página de difusión de eventos prefecta para ti!</h2>
                <p class="lead mb-5">
                    Aqui podrás encontrar todo tipo de eventos para ir con tu familia o amigos
                </p>
                <a class="btn btn-dark btn-xl" href="#portfolio">¿Qué eventos ofrecemos?</a>
            </div>
        </div>
    </div>
</section>
<!-- Portfolio-->
<section class="content-section bg-primary text-white" id="portfolio">
    <div class="container px-4 px-lg-5">
        <div class="content-section-heading text-center">
            <h3 class="text-secondary mb-0">Ver</h3>
            <h2 class="mb-5">Eventos</h2>
        </div>
        <div class="row gx-0">
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h1">Conciertos y Festivales</div>
                            <p class="mb-0" style="font-size: x-large;">Para bailar y divertirte un rato.</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="assets/img/evento1.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h1">Teatro y Cultura</div>
                            <p class="mb-0" style="font-size: x-large;">Sorprendete con la mágina del teatro.</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="assets/img/evento2.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h1">Deportes</div>
                            <p class="mb-0" style="font-size: x-large;"> Para nunca perderte un buen partido.</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="assets/img/evento3.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h1">Familiares</div>
                            <p class="mb-0" style="font-size: x-large;">Qué mejor que un momento en familia.</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="assets/img/evento4.jpg" alt="..." />
                </a>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="footer text-center">
    <div class="container px-4 px-lg-5">
        <ul class="list-inline mb-5">
            <li class="list-inline-item">
                <a class="social-link rounded-circle text-white" href="https://github.com/Aaperezon/WebEventosCulturales"><i class="icon-social-github"></i></a>
            </li>
        </ul>
        <p class="text-muted small mb-0">Copyright &copy; AndreaEspinosaAzuela y AaronPerezOntiveros 2021</p>
    </div>
</footer>

</body>
</html>


