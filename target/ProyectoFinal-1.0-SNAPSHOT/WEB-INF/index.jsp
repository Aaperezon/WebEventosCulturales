<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TecTicket - by Aaron&Andrea</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/scriptModal.js"></script>
    <title>TecTicket</title>
</head>
<body>
    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                Tec Ticket
            </a>
            <center>
                <button type="button"  id="iniciarsesion" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#logInModal">
                    Iniciar Sesión
                </button>
                <button type="button"  id="crearcuenta" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#createAccountModal">
                    Crear Cuenta
                </button>
            </center>
        </div>
    </nav>
            <div class="modal fade" id="logInModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="logInModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="logInModalLabel">Iniciar Sesión</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div style="color: red">
                ${mensaje}
            </div>

            <div class="modal fade" id="createAccountModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="createAccountModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="createAccountModalLabel">Crear Cuenta</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form class="needs-validation" id="createAccountForm" action="signup" method="POST" oninput='newPasswordConfirmation.setCustomValidity(newPassword.value != newPasswordConfirmation.value ? "Las contraseñas no coinciden." : "")'>
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
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary" id="createGuest">Crear Cuenta</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="assets/img/inicial.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>TecTicket es la página de difusión de eventos prefecta para ti</h5>
                <p> Aqui podrás encontrar todo tipo de eventos para ir con tu familia o amigos</p>
                <h1>¿Cómo deseas ingresar?</h1>
                <a class="btn btn-primary btn-xl" href="#tutorialInvitado">Invitado</a>
                <a class="btn btn-primary btn-xl" href="#tutorialOrganizador">Organizador</a>
                <br>
                <br>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/Conciertos y Festivales.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Conciertos y Festivales</h5>
                <p>Para bailar y divertirte un rato</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/Teatro y Cultura.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Teatro y Cultura</h5>
                <p>Sorpréndete con la mágia del teatro</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/Deportes.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Deportes</h5>
                <p>Para nunca perderte un buen partido</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/Familiares.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Familiares</h5>
                <p>Qué mejor que un momento en familia</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
    <div class="p-3 mb-2 bg-light text-dark" id="tutorialInvitado">
        <br>
        <br>
        <center>
            <h3 class="text-secondary mb-0">Tutorial</h3>
            <h2 class="mb-5">Perfil de Invitado</h2>
        </center>
        <div class="row">
            <div class="col">

            </div>
            <div class="col">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/7sjvua4VjzE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col">

            </div>
        </div>
    </div>


    <div class="p-3 mb-2 bg-dark text-white" id="tutorialOrganizador">
        <br>
        <br>
        <center>
            <h3 class="text-secondary mb-0">Tutorial</h3>
            <h2 class="mb-5">Perfil de Organizador</h2>
        </center>
        <div class="row">
            <div class="col">

            </div>
            <div class="col">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/4fndeDfaWCg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col">

            </div>
        </div>
    </div>
    <footer class="footer text-center">
        <div class="container px-4 px-lg-5">
            <p class="text-muted small mb-0">Copyright &copy;Andrea Espinosa Azuela - Aarón Perez Ontiveros</p>
        </div>
    </footer>
</body>
</html>