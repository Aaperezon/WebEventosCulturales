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
            <img src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
            TecTicket
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
                <img src="..." class="card-img-top" alt="AQUI VA LA IMAGEN DEL EVENTO">
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
                <img src="..." class="card-img-top" alt="AQUI VA LA IMAGEN DEL EVENTO">
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
                <img src="..." class="card-img-top" alt="AQUI VA LA IMAGEN DEL EVENTO">
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


</body>
</html>