package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.EventDAO;
import com.example.ProyectoFinal.DAO.UserDAO;
import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Full;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet(name = "organizador", value = "/organizador")
@MultipartConfig
public class OrganizadorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        // Solo usuarios que esten logeados
        if (sesion.getAttribute("user") != null) {
            EventDAO eventDao = new EventDAO();
            List<Event_Full> events = eventDao.getOrganizerEvents(Integer.parseInt(sesion.getAttribute("user").toString()));
            request.setAttribute("events", events);
            request.getRequestDispatcher("WEB-INF/organizador.jsp").forward(request, response);

        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String request_description = request.getParameter("request_description") == "" ? "error": request.getParameter("request_description");
        if(request_description.equals("createEvent")){
            Event event = new Event();
            HttpSession sesion = request.getSession();

            event.setName(request.getParameter("name"));
            event.setFK_id_user(Integer.parseInt(sesion.getAttribute("user").toString()));
            event.setFK_id_event_category(Integer.parseInt(request.getParameter("category")));
            event.setPrice(Float.parseFloat(request.getParameter("price")));
            event.setLocation(request.getParameter("location"));
            event.setDescription(request.getParameter("description"));
            event.setDate(Date.valueOf(request.getParameter("date")));
            event.setCapacity(Integer.parseInt(request.getParameter("capacity")));
            event.setPicture(request.getPart("picture").getInputStream());

            EventDAO eventDAO = new EventDAO();
            eventDAO.saveEvent(event);

        }
        else if(request_description.equals("logout")){
            HttpSession sesion = request.getSession();
            sesion.invalidate();
            request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String request_parameter = request.getParameter("request_description") == "" ? "error": request.getParameter("request_description");
        if(request_parameter.equals("deleteEvent")){
            int id_event = request.getParameter("id_event")== "" ? 0: Integer.parseInt(request.getParameter("id_event"));
            EventDAO eventDAO= new EventDAO();
            eventDAO.deleteEvent(id_event);
        }
    }
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
