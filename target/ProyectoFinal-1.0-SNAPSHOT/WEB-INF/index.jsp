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
                    <button type="button"  id="nuevo" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        Crear Cuenta
                    </button>
                </div>
                <div class="dropdown mt-3">
                    <button type="button" class="btn btn-outline-dark">Mis Eventos</button>
                </div>
                <br>
                <br>
                <button type="button"  id="iniciar" class="btn btn-outline-info" data-bs-toggle="modal2" data-bs-target="#staticBackdrop2">
                    Iniciar Sesión
                </button>
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

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Crear Cuenta</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="formulario">
                    <div class="mb-3">
                        <label for="nombre" class="form-label" >Nombre</label>
                        <input type="text" class="form-control" id="nombre" a>
                    </div>
                    <div class="mb-3">
                        <label for="paterno" class="form-label">Apellido paterno</label>
                        <input type="text" class="form-control" id="paterno" a>
                    </div>
                    <div class="mb-3">
                        <label for="materno" class="form-label">Apellido materno</label>
                        <input type="text" class="form-control" id="materno" a>
                    </div>
                    <div class="mb-3">
                        <label for="nacimiento" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="nacimiento" a>
                    </div>
                    <div class="mb-3">
                        <label for="usuario" class="form-label">Usuario</label>
                        <input type="email" class="form-control" id="usuario" a>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary" id="guardar">Guardar</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>