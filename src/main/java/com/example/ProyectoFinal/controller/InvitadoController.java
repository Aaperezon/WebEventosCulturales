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
            String request_parameter = request.getParameter("request_description") == null ? "": request.getParameter("request_description");
            if(request_parameter.equals("")){
                int id_user = Integer.parseInt(sesion.getAttribute("user").toString());
                EventDAO eventDao = new EventDAO();
                List<Event_Full> events = eventDao.getNotAttendanceEvents(id_user);
                request.setAttribute("events", events);
                request.setAttribute("bloqueado", false);
                request.getRequestDispatcher("WEB-INF/invitado.jsp").forward(request, response);
            }
            if(request_parameter.equals("1")){
                int id_user = Integer.parseInt(sesion.getAttribute("user").toString());
                EventDAO eventDao = new EventDAO();
                List<Event_Full> events = eventDao.getAttendanceEvents(id_user);
                request.setAttribute("events", events);
                request.setAttribute("bloqueado", true);
                request.getRequestDispatcher("WEB-INF/invitado.jsp").forward(request, response);
            }
        }else
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String request_parameter = request.getParameter("request_description") == "" ? "error": request.getParameter("request_description");
        if(request_parameter.equals("logout")){
            request.getSession().invalidate();
        }
        else if(request_parameter.equals("attend")){
            HttpSession sesion = request.getSession();
            int id_event = Integer.parseInt(request.getParameter("id_event"));
            int id_user = Integer.parseInt(sesion.getAttribute("user").toString());
            UserDAO userDAO = new UserDAO();
            userDAO.setUserAttendance(id_user,id_event);

        }



    }
}
