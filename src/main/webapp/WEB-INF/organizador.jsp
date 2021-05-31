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
        <button type="button"  id="nuevo" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Crear Evento
        </button>
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
                    <li class="list-group-item">Ubicación</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                    <li class="list-group-item">Número de asistentes:</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Eliminar evento</button>
                </div>
                <br>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Actualizar evento</button>
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
                    <li class="list-group-item">Ubicación</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                    <li class="list-group-item">Número de asistentes:</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Eliminar evento</button>
                </div>
                <br>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Actualizar evento</button>
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
                    <li class="list-group-item">Ubicación</li>
                    <li class="list-group-item">Fecha</li>
                    <li class="list-group-item">Capacidad del evento</li>
                    <li class="list-group-item">Número de asistentes:</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Eliminar evento</button>
                </div>
                <br>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Actualizar evento</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Crear Evento</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="formulario">
                    <div class="mb-3">
                        <label for="nombre" class="form-label" >Nombre del evento</label>
                        <input type="text" class="form-control" id="nombre" a>
                    </div>
                    <div class="mb-3">
                        <label for="descripcion" class="form-label">Descripción</label>
                        <input type="text" class="form-control" id="descripcion" a>
                    </div>
                    <div class="mb-3">
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                Categoria
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Conciertos y Festivales</a></li>
                                <li><a class="dropdown-item" href="#">Teatro y Cultura</a></li>
                                <li><a class="dropdown-item" href="#">Deportes</a></li>
                                <li><a class="dropdown-item" href="#">Familiares</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="precio" class="form-label">Precio</label>
                        <input type="number" class="form-control" id="precio" a>
                    </div>
                    <div class="mb-3">
                        <label for="ubicacion" class="form-label">Ubicación</label>
                        <input type="text" class="form-control" id="ubicacion" a>
                    </div>
                    <div class="mb-3">
                        <label for="fecha" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="fecha" a>
                    </div>
                    <div class="mb-3">
                        <label for="capacidad" class="form-label">Capacidad del evento</label>
                        <input type="number" class="form-control" id="capacidad" a>
                    </div>
                    <div class="mb-3">
                        <label for="imagen" class="form-label">Imagen del evento</label>
                        <input type="image" class="form-control" id="imagen">
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