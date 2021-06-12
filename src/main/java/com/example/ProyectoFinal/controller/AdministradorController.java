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
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "administrador", value = "/administrador")
@MultipartConfig
public class AdministradorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("user") != null) {
            EventDAO eventDao = new EventDAO();
            UserDAO userDAO = new UserDAO();
            List<Event_Full> events = eventDao.getAllEvents();
            List<User> users = userDAO.getAllOrganizers();
            request.setAttribute("events", events);
            request.setAttribute("users", users);
            request.getRequestDispatcher("WEB-INF/administrador.jsp").forward(request, response);
        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String request_parameter = request.getParameter("request_type") == "" ? "error": request.getParameter("request_type");
        if(request_parameter.equals("create")){
            User newUser = new User();
            newUser.setUser(request.getParameter("user"));
            newUser.setPassword(request.getParameter("password"));
            newUser.setName(request.getParameter("name"));
            newUser.setLast_name(request.getParameter("last_name"));

            UserDAO userDAO = new UserDAO();
            Boolean resultado = userDAO.saveOrganizer(newUser);
            String mensaje="";
            if(resultado){
                // Se borro correctamente
                mensaje="{ \"mensaje\": \"Exito! Se agrego correctamente\" }";
            }else{
                // No se inserto correctamente, no trae ids
                mensaje = "{\"mensaje\": \"Error! Hubo un problema\" }";
            }
            response.setContentType("application/json");
            PrintWriter out=response.getWriter();
            out.print(mensaje);
        }
        else if(request_parameter.equals("logout")){
            request.getSession().invalidate();
        }
    }
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String request_parameter = request.getParameter("request_description") == "" ? "error": request.getParameter("request_description");

        if(request_parameter.equals("deleteEvent")){
            int id_event = request.getParameter("id_event")== "" ? 0: Integer.parseInt(request.getParameter("id_event"));
            EventDAO eventDAO= new EventDAO();
            eventDAO.deleteEvent(id_event);
        }else if (request_parameter.equals("deleteOrganizer")){
            int id_user = request.getParameter("id_user")== "" ? 0: Integer.parseInt(request.getParameter("id_user"));
            UserDAO userDAO= new UserDAO();
            userDAO.deleteUser(id_user);
        }

    }
}
