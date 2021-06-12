package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.Event;
import com.example.ProyectoFinal.model.Event_Category;
import com.example.ProyectoFinal.model.Event_Full;
import com.example.ProyectoFinal.utility.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDAO implements IEventDAO {
    @Override
    public List<Event_Full> getAllEvents() {
        List<Event_Full> events = new ArrayList();
        String sql = "SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category;";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            Event_Category event_category = null;
            Event event = null;
            Event_Full event_full = null;
            while(resultSet.next()){
                event = new Event();
                event_category = new Event_Category();
                event_full = new Event_Full();
                event.setId_event(resultSet.getInt("id_event"));
                event.setFK_id_event_category(resultSet.getInt("FK_id_event_category"));
                event.setName(resultSet.getString("name"));
                event.setDescription(resultSet.getString("description"));
                event.setPrice(resultSet.getFloat("price"));
                event.setLocation(resultSet.getString("location"));
                event.setDate(resultSet.getDate("date"));
                event.setCapacity(resultSet.getInt("capacity"));
                event_category.setId_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setCategory(resultSet.getString("category"));
                event_full.setEvent(event);
                event_full.setEvent_category(event_category);
                events.add(event_full);
            }
            return events;
        }catch (Exception ex){
            System.out.println("ERROR: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public List<Event_Full> getOrganizerEvents(int idUser) {
        List<Event_Full> events = new ArrayList();
        String sql = "SELECT category, id_event, FK_id_event_category, event.name, description, price, location, date, capacity FROM event INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category INNER JOIN user ON event.FK_id_user = user.id_user WHERE user.id_user = ?;";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);

            preparedStatement.setInt(1,idUser);

            ResultSet resultSet = preparedStatement.executeQuery();
            Event_Category event_category = null;
            Event event = null;
            Event_Full event_full = null;
            while(resultSet.next()){
                event = new Event();
                event_category = new Event_Category();
                event_full = new Event_Full();
                event.setId_event(resultSet.getInt("id_event"));
                event.setFK_id_event_category(resultSet.getInt("FK_id_event_category"));
                event.setName(resultSet.getString("name"));
                event.setDescription(resultSet.getString("description"));
                event.setPrice(resultSet.getFloat("price"));
                event.setLocation(resultSet.getString("location"));
                event.setDate(resultSet.getDate("date"));
                event.setCapacity(resultSet.getInt("capacity"));
                event_category.setId_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setCategory(resultSet.getString("category"));
                event_full.setEvent(event);
                event_full.setEvent_category(event_category);
                events.add(event_full);
            }
            return events;
        }catch (Exception ex){
            System.out.println("ERROR: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public List<Event_Full> getNotAttendanceEvents(int idUser) {
        List<Event_Full> events = new ArrayList();
        String sql = "SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event tINNER JOIN event_category ON FK_id_event_category = id_event_category WHERE id_event not in (SELECT FK_id_event from assistance INNER JOIN user ON FK_id_user = id_user WHERE id_user = ?)";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);

            preparedStatement.setInt(1,idUser);

            ResultSet resultSet = preparedStatement.executeQuery();
            Event_Category event_category = null;
            Event event = null;
            Event_Full event_full = null;
            while(resultSet.next()){
                event = new Event();
                event_category = new Event_Category();
                event_full = new Event_Full();
                event.setId_event(resultSet.getInt("id_event"));
                event.setFK_id_event_category(resultSet.getInt("FK_id_event_category"));
                event.setName(resultSet.getString("name"));
                event.setDescription(resultSet.getString("description"));
                event.setPrice(resultSet.getFloat("price"));
                event.setLocation(resultSet.getString("location"));
                event.setDate(resultSet.getDate("date"));
                event.setCapacity(resultSet.getInt("capacity"));
                event_category.setId_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setCategory(resultSet.getString("category"));
                event_full.setEvent(event);
                event_full.setEvent_category(event_category);
                events.add(event_full);
            }
            return events;
        }catch (Exception ex){
            System.out.println("ERROR: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public List<Event_Full> getAttendanceEvents(int idUser) {
        List<Event_Full> events = new ArrayList();
        String sql = "SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event tINNER JOIN event_category ON FK_id_event_category = id_event_category WHERE id_event in (SELECT FK_id_event from assistance INNER JOIN user ON FK_id_user = id_user WHERE id_user = ?)";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);

            preparedStatement.setInt(1,idUser);

            ResultSet resultSet = preparedStatement.executeQuery();
            Event_Category event_category = null;
            Event event = null;
            Event_Full event_full = null;
            while(resultSet.next()){
                event = new Event();
                event_category = new Event_Category();
                event_full = new Event_Full();
                event.setId_event(resultSet.getInt("id_event"));
                event.setFK_id_event_category(resultSet.getInt("FK_id_event_category"));
                event.setName(resultSet.getString("name"));
                event.setDescription(resultSet.getString("description"));
                event.setPrice(resultSet.getFloat("price"));
                event.setLocation(resultSet.getString("location"));
                event.setDate(resultSet.getDate("date"));
                event.setCapacity(resultSet.getInt("capacity"));
                event_category.setId_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setCategory(resultSet.getString("category"));
                event_full.setEvent(event);
                event_full.setEvent_category(event_category);
                events.add(event_full);
            }
            return events;
        }catch (Exception ex){
            System.out.println("ERROR: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public Boolean deleteEvent(int id_event) {
        String sql="DELETE FROM event WHERE id_event=?";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setInt(1,id_event);
            preparedStatement.executeUpdate();
            return true;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }

    @Override
    public Boolean saveEvent(Event event) {
        String sql = "INSERT INTO event (FK_id_user, FK_id_event_category, name, description, price, location, date, capacity) VALUES  (?,?,?,?,?,?, ?, ?)";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, event.getFK_id_user());
            preparedStatement.setInt(2, event.getFK_id_event_category());
            preparedStatement.setString(3, event.getName());
            preparedStatement.setString(4, event.getDescription());
            preparedStatement.setFloat(5, event.getPrice());
            preparedStatement.setString(6, event.getLocation());
            preparedStatement.setDate(7, event.getDate());
            preparedStatement.setInt(8, event.getCapacity());
            preparedStatement.executeUpdate();
            return true;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }

    @Override
    public Event_Full getEvent(int id_event) {
        String sql= "SELECT id_event, FK_id_event_category, name, description, price, location, date, capacity, category FROM event INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category WHERE id_event = ?;";
        Event_Full event_full =null;
        try{
            Connection conexion= MySQLConnection.getConnection();
            PreparedStatement preparedStatement=conexion.prepareStatement(sql);

            preparedStatement.setInt(1, id_event);
            ResultSet resultSet= preparedStatement.executeQuery();

            if (resultSet.next()){
                // Se encontro la informacion
                event_full = new Event_Full();
                Event event =new Event();
                Event_Category event_category=new Event_Category();


                event.setId_event(resultSet.getInt("id_event"));
                event.setFK_id_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setId_event_category(resultSet.getInt("FK_id_event_category"));
                event_category.setCategory(resultSet.getString("category"));
                event.setName(resultSet.getString("name"));
                event.setDescription(resultSet.getString("description"));
                event.setPrice(resultSet.getFloat("price"));
                event.setLocation(resultSet.getString("location"));

                event.setDate(resultSet.getDate("date"));

                event.setCapacity(resultSet.getInt("capacity"));

                event_full.setEvent(event);
                event_full.setEvent_category(event_category);

                return event_full;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @Override
    public Boolean updateEvent(Event event) {
        String sql = "UPDATE event SET FK_id_event_category=?, name=?, description=?, price=?, location=?, date=?,capacity=? WHERE id_event=?;";
        try {
            System.out.println("making query update");
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, event.getFK_id_event_category());
            preparedStatement.setString(2, event.getName());
            preparedStatement.setString(3, event.getDescription());
            preparedStatement.setFloat(4, event.getPrice());
            preparedStatement.setString(5, event.getLocation());
            preparedStatement.setDate(6, event.getDate());
            preparedStatement.setInt(7, event.getCapacity());
            preparedStatement.setInt(8, event.getId_event());

            preparedStatement.executeUpdate();
            return true;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
