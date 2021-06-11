package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.UserDAO;
import com.example.ProyectoFinal.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "signup", value = "/signup")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User newUser = new User();
        newUser.setUser(request.getParameter("validationCustom03"));
        newUser.setPassword(request.getParameter("validationCustom04"));
        newUser.setName(request.getParameter("validationCustom06"));
        newUser.setLast_name(request.getParameter("validationCustom07"));
        UserDAO userDAO = new UserDAO();
        int id_user = userDAO.saveInvitado(newUser);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("user",id_user);
        response.sendRedirect("invitado");

    }
}
