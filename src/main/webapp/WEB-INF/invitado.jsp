<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
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
    <c:forEach items="${events}" var="event" varStatus="loop">
        <c:if test="${loop.index % 3 == 0}">
            <div class="row">
        </c:if>
        <div class="col">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                <img src="" class="card-img-top" alt="AQUI VA IMAGEN">
                <div class="card-body">
                    <h5 class="card-title">${event.event.name}</h5>
                    <p class="card-text">${event.event.description}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">${event.event_category.category}</li>
                    <li class="list-group-item">${event.event.price}</li>
                    <li class="list-group-item">${event.event.location}</li>
                    <li class="list-group-item">${event.event.date}</li>
                    <li class="list-group-item">${event.event.capacity}</li>
                </ul>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="button">Asistir</button>
                </div>
            </div>
        </div>
        <c:if test="${loop.index % 3 == 0}">
            </div>
        </c:if>

    </c:forEach>
</div>


</body>
</html>