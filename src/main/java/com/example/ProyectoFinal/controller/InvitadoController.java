package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.EventDAO;
import com.example.ProyectoFinal.DAO.UserDAO;
import com.example.ProyectoFinal.model.Event_Full;
import com.example.ProyectoFinal.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@WebServlet(name = "invitado", value = "/invitado")
@MultipartConfig
public class InvitadoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession();

        if (sesion.getAttribute("user") != null) {
            System.out.println(request.getParameter("user"));
            EventDAO eventDao = new EventDAO();
            List<Event_Full> events = eventDao.getAllEvents();
            request.setAttribute("events", events);
            request.getRequestDispatcher("WEB-INF/invitado.jsp").forward(request, response);
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
            int id_user = userDAO.saveInvitado(newUser);
            //HttpSession sesion = request.getSession();
            //sesion.invalidate();
            //sesion.setAttribute("user",id_user);
            response.sendRedirect("invitado");


        }


    }
}
