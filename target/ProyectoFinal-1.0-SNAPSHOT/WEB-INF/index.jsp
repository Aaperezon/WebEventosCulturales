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
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="createAccountModalLabel">Cancelar</button>
                                <button type="submit" class="btn btn-primary" id="createGuest">Crear Cuenta</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Tec Ticket
        </a>
    </div>
</nav>


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
                <br>
                <br>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/evento1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Conciertos y Festivales</h5>
                <p>Para bailar y divertirte un rato</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/evento2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Teatro y Cultura</h5>
                <p>Sorpréndete con la mágia del teatro</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/evento3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Deportes</h5>
                <p>Para nunca perderte un buen partido</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="assets/img/evento4.jpg" class="d-block w-100" alt="...">
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
</body>
</html>