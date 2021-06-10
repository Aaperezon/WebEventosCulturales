package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Full;

import java.util.List;

public interface IEventDAO {
    List<Event_Full> getAllEvents();
    List<Event_Full> getOrganizerEvents(int idUser);
}
