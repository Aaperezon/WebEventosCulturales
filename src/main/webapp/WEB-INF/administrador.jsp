<%@ page import="com.example.ProyectoFinal.model.Event_Full" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/administrador.js" /></script>
    <title>TecTicket</title>
</head>
<body>
<nav class="navbar navbar-light bg-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/logotec.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Tec Ticket
        </a>
        <button type="button"  id="nuevo" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#createAccountModal">
            Crear Cuenta Organizador
        </button>
        <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
            Cerrar Sesión
        </button>
    </div>
</nav>
<div class="container">
    <br>
    <br>
    <br>
    <c:forEach items="${users}" var="user" varStatus="loop">
    <c:if test="${loop.index % 3 == 0}">
    <div class="row">
        </c:if>
        <div class="col">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">${user.user}</h5>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">${user.name}</li>
                    <li class="list-group-item">${user.last_name}</li>
                </ul>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-danger"  data-id="${user.id_user}"> Eliminar Organizador </button>
                </div>
            </div>
        </div>
        <c:if test="${loop.index % 3 == 0}">
    </div>
    </c:if>

    </c:forEach>

    <c:forEach items="${events}" var="event" varStatus="loop">
        <c:if test="${loop.index % 3 == 0}">
            <div class="row">
        </c:if>
            <div class="col">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                        <img src="assets/img/evento1.jpg" class="card-img-top">
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
                            <button type="button" class="btn btn-danger"  data-id="${event.event.id_event}"> Eliminar evento </button>
                        </div>
                    </div>
                </div>
        <c:if test="${loop.index % 3 == 0}">
            </div>
        </c:if>

    </c:forEach>


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
                <button type="button" class="btn btn-primary" id="logout">Si</button>
            </div>
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
                <form class="needs-validation" id="createAccountForm" oninput='newPasswordConfirmation.setCustomValidity(newPassword.value != newPasswordConfirmation.value ? "Las contraseñas no coinciden." : "")'>
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
                        <button type="submit" class="btn btn-primary" id="createOrganizer">Crear Cuenta</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>