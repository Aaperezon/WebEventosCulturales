<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Invitado</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#LogInModal">
        Iniciar sesión
    </button>
    <form method="POST" action="login">
        <!-- Modal -->
        <div class="modal fade" id="LogInModal" tabindex="-1" aria-labelledby="LogInModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="LogInModalLabel">Inicio de sesión</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <div>
                            <label for="validationCustom01" class="form-label">Usuario</label>
                            <input type="text" name="user"class="form-control" id="validationCustom01" placeholder="usuario123" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>

                        <div>
                            <label for="validationCustom01" class="form-label">Contraseña</label>
                            <input type="password" name="password" class="form-control" id="validationCustom02" placeholder="**********" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                    </div>
                </div>
            </div>
        </div>
    </form>




    <h1> Aquí van los 'cards' con la información de los eventos disponibles</h1>
    <br/>
    <a href="hello-servlet">Hello Servlet</a>
</body>
</html>