<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/organizador.js" /></script>
    <title>TecTicket</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            TecTicket
        </a>
        <center>
            <button type="button"  id="nuevo" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Crear Evento
            </button>
            <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
            Cerrar Sesión
            </button>
        </center>
    </div>
</nav>
<div class="container">
    <br>
    <br>
    <br>
    <c:forEach items="${events}" var="event" varStatus="loop">
        <c:if test="${loop.index % 3 == 0}">
            <div class="row">
        </c:if>
        <div class="col">
            <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                <img src="assets/img/${event.event_category.category}.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">${event.event.name}</h5>
                    <p class="card-text">${event.event.description}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Categoria: ${event.event_category.category}</li>
                    <li class="list-group-item">Precio: ${event.event.price}</li>
                    <li class="list-group-item">Ubicacion: ${event.event.location}</li>
                    <li class="list-group-item">Fecha: ${event.event.date}</li>
                    <li class="list-group-item">Cupo: ${event.event.capacity}</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-danger" type="button" data-id="${event.event.id_event}">Eliminar evento</button>
                </div>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#updateFormModal" data-id="${event.event.id_event}">Actualizar evento</button>
                </div>
            </div>
        </div>
    </c:forEach>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Crear Evento</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="formulario">
                    <div class="mb-3">
                        <label for="validationCustom01" class="form-label">Nombre del evento</label>
                        <input type="text" class="form-control" id="validationCustom01"  name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom02" class="form-label">Descripción</label>
                        <input type="text" class="form-control" id="validationCustom02"  name="description" required>
                    </div>
                    <div class="mb-3">
                        <select class="form-select" id="validationDefault01" required>
                            <option selected disabled value="">Categorias</option>
                            <option value="1">Conciertos y Festivales</option>
                            <option value="2">Teatro y Cultura</option>
                            <option value="3">Deportes</option>
                            <option value="3">Familiares</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom03" class="form-label">Precio</label>
                        <input type="number" step="0.01" class="form-control" id="validationCustom03"  name="price" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom04" class="form-label">Ubicacion</label>
                        <input type="text" class="form-control" id="validationCustom04"  name="location" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom05" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="validationCustom05"  name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom06" class="form-label">Capacidad del evento</label>
                        <input type="number" class="form-control" id="validationCustom06"  name="capacity" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary" id="createEvent">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
    <!-- Modal Cerrar Sesion -->
    <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel2">Cerrar Sesión</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ¿Estás seguro que deseas cerrar la sesión?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <button type="button" class="btn btn-success" id="logout">Si</button>
                </div>
            </div>
        </div>
    </div>

<div class="modal fade" id="updateFormModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Actualizar Evento</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="updateForm">
                    <div class="mb-3">
                        <label for="validationCustom07" class="form-label">Nombre del evento</label>
                        <input type="text" class="form-control" id="validationCustom07"  name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom08" class="form-label">Descripción</label>
                        <input type="text" class="form-control" id="validationCustom08"  name="description" required>
                    </div>
                        <select class="form-select" id="validationDefault02" required>
                            <option selected disabled value="">Categorias</option>
                            <option value="1">Conciertos y Festivales</option>
                            <option value="2">Teatro y Cultura</option>
                            <option value="3">Deportes</option>
                            <option value="3">Familiares</option>
                        </select>
                    <div class="mb-3">
                        <label for="validationCustom09" class="form-label">Precio</label>
                        <input type="number" step="0.01" class="form-control" id="validationCustom09"  name="price" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom10" class="form-label">Ubicacion</label>
                        <input type="text" class="form-control" id="validationCustom10"  name="location" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom11" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="validationCustom11"  name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="validationCustom12" class="form-label">Capacidad del evento</label>
                        <input type="number" class="form-control" id="validationCustom12"  name="capacity" required>
                    </div>
                    <input type="hidden" id="id_event" name="id_event"/>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary" id="update_save">Actualizar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>