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
        String sql = "SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity, picture FROM event INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category;";
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
                event.setPicture(resultSet.getBinaryStream("picture"));
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
        String sql = "SELECT category, id_event, FK_id_event_category, event.name, description, price, location, date, capacity, picture FROM event INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category INNER JOIN user ON event.FK_id_user = user.id_user WHERE user.id_user = ?;";
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
                event.setPicture(resultSet.getBinaryStream("picture"));
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
        String sql = "INSERT INTO event (FK_id_user, FK_id_event_category, name, description, price, location, date, capacity, picture) VALUES  (?,?,?,?,?,?, ?, ?, ?)";
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
            preparedStatement.setBinaryStream(9, event.getPicture());
            preparedStatement.executeUpdate();
            return true;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
