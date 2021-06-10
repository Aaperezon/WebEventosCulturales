<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/usuario.js" /></script>
    <title>TecTicket</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Tec Ticket
        </a>
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
            <span class="iconify" data-icon="carbon:user-avatar-filled-alt" data-inline="false"></span>
        </button>

        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel">Cuenta</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="dropdown mt-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalIndex" data-bs-whatever="@createAcount">Crear Cuenta</button>

                </div>
                <div class="dropdown mt-3">
                    <button type="button" class="btn btn-outline-dark">
                        Mis Eventos
                    </button>
                </div>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalIndex" data-bs-whatever="@LogIn">Iniciar Sesión</button>

            </div>
        </div>
    </div>
</nav>
<div class="container">
    <br>
    <br>
    <br>
    <div class="row">
        <div class="col">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                <img src="assets/img/evento2.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">Nombre del evento</h5>
                    <p class="card-text">Descripción del evento</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Categoria</li>
                    <li class="list-group-item">Precio</li>
                    <li class="list-group-item">Ubicacion</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Asistir</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                <img src="assets/img/evento3.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">Nombre del evento</h5>
                    <p class="card-text">Descripción del evento</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Categoria</li>
                    <li class="list-group-item">Precio</li>
                    <li class="list-group-item">Ubicacion</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Asistir</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                <img src="assets/img/evento4.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">Nombre del evento</h5>
                    <p class="card-text">Descripción del evento</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Categoria</li>
                    <li class="list-group-item">Precio</li>
                    <li class="list-group-item">Ubicacion</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Asistir</button>
                </div>
            </div>
        </div>
    </div>
</div>


<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalIndex" data-bs-whatever="@logIn">Iniciar Sesión </button>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalIndex" data-bs-whatever="@createAccount">Crear Cuenta </button>

<div class="modal fade" id="modalIndex" tabindex="-1" aria-labelledby="modalIndexLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalIndexLabel">Form:</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modalInde" aria-label="Close"></button>
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modalIndex">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>