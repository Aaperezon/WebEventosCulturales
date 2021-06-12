<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/invitado.js" /></script>

    <title>TecTicket</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Tec Ticket
        </a>
        <center>
            <button type="button"  id="cartelera" class="btn btn-outline-primary">
               Cartelera
            </button>
            <button type="button" id="misEventos" class="btn btn-outline-primary">
                Mis Eventos
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
                    <c:if test="${bloqueado==true}">
                            <button class="btn btn-primary" type="button" data-id="${event.event.id_event}" disabled>Asistir</button>
                    </c:if>
                    <c:if test="${bloqueado==false}">
                        <button class="btn btn-primary" type="button" data-id="${event.event.id_event}">Asistir</button>
                    </c:if>
                </div>
            </div>
        </div>
    </c:forEach>
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

</body>
</html>