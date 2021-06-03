package com.example.ProyectoFinal.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "invitado", value = "/invitado")
public class InvitadoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        // Solo usuarios que esten logeados
        if (sesion.getAttribute("user") != null) {
            // Deberiamos establecer un atributos usuarios que tenga una lista de usuarios
            request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
