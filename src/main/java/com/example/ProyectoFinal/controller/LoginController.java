package com.example.ProyectoFinal.controller;

import com.example.ProyectoFinal.DAO.UserDAO;
import com.example.ProyectoFinal.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String attemptedUser=request.getParameter("attemptedUser");
        String attemptedPassword=request.getParameter("attemptedPassword");

        //System.out.println(attemptedUser);
        //System.out.println(attemptedPassword);

        if(!attemptedUser.equals("") && !attemptedPassword.equals("") ){
            UserDAO userDAO=new UserDAO();
            User user = userDAO.getUser(attemptedUser,attemptedPassword);

            if(user!=null){
                int userType = user.getFK_id_user_type().getId_user_type();
                if(userType == 1){
                    System.out.println("Confirmacion que es administrador");
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("user",user.getId_user());
                    response.sendRedirect("administrador");
                }
                else if(userType == 2){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("user",user.getId_user());
                    response.sendRedirect("organizador");
                }
                else if(userType == 3){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("user",user.getId_user());
                    response.sendRedirect("invitado");
                }
            }else{
                request.setAttribute("mensaje","Error al iniciar sesión, verifica el usuario y la contraseña");
                request.getRequestDispatcher("WEB-INF/error.jsp").forward(request,response);
            }
        }else{
            request.setAttribute("mensaje","El usuario o contraseña no son validos");
            request.getRequestDispatcher("WEB-INF/error.jsp").forward(request,response);

        }
    }
}
