package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.User;

public interface IUserDAO {
    User getUser(String user, String password);
    User saveInvitado(String user, String password, String name, String last_name);

}
