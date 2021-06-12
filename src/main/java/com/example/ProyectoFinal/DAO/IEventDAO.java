package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Full;

import java.util.List;

public interface IEventDAO {
    List<Event_Full> getAllEvents();
    List<Event_Full> getOrganizerEvents(int idUser);
    List<Event_Full> getNotAttendanceEvents(int idUser);
    List<Event_Full> getAttendanceEvents(int idUser);
    Boolean deleteEvent(int id_event);
    Boolean saveEvent(Event event);
    Event_Full getEvent(int id_event);
    Boolean updateEvent(Event event);

}
