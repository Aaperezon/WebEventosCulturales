package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Full;
import com.example.ProyectoFinal.model.User;

import java.util.List;

public interface IUserDAO {
    User getUser(String user, String password);
    int saveInvitado(User newUser);
    Boolean saveOrganizer(User newUser);
    List<User> getAllOrganizers();
    Boolean deleteUser(int id_user);
    Boolean setUserAttendance(int id_user, int id_event);


}
