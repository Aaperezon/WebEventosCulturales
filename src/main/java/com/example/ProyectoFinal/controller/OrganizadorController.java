package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.EventDAO;
import com.example.ProyectoFinal.model.Event_Full;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "organizador", value = "/organizador")
public class OrganizadorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        // Solo usuarios que esten logeados
        if (sesion.getAttribute("user") != null) {
            EventDAO eventDao = new EventDAO();
            List<Event_Full> events = eventDao.getAllEvents();
            request.setAttribute("events", events);
            request.getRequestDispatcher("WEB-INF/organizador.jsp").forward(request, response);

        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
