package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.EventDAO;
import com.example.ProyectoFinal.DAO.UserDAO;
import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Full;
import com.example.ProyectoFinal.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "administrador", value = "/administrador")
public class AdministradorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        // Solo usuarios que esten logeados
        if (sesion.getAttribute("user") != null) {
            EventDAO eventDao = new EventDAO();
            List<Event_Full> events = eventDao.getAllEvents();
            request.setAttribute("events", events);
            request.getRequestDispatcher("WEB-INF/administrador.jsp").forward(request, response);
        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
