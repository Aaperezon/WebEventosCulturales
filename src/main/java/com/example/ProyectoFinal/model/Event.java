package com.example.ProyectoFinal.model;

import java.io.InputStream;
import java.io.Serializable;
import java.sql.Date;

public class Event implements Serializable {

    private int id_event;
    private int FK_id_user;
    private int FK_id_event_category;
    private String name;
    private String description;
    private float price;
    private String location;
    private Date date;
    private int capacity;
    private InputStream picture;
    public Event() {
    }
    public Event(int id_event, int FK_id_user, int FK_id_event_category, String name, String description, float price, String location, Date date, int capacity, InputStream picture) {
        this.id_event = id_event;
        this.FK_id_user = FK_id_user;
        this.FK_id_event_category = FK_id_event_category;
        this.name = name;
        this.description = description;
        this.price = price;
        this.location = location;
        this.date = date;
        this.capacity = capacity;
        this.picture = picture;
    }

    public int getId_event() {
        return id_event;
    }

    public void setId_event(int id_event) {
        this.id_event = id_event;
    }

    public int getFK_id_user() {
        return FK_id_user;
    }

    public void setFK_id_user(int FK_id_user) {
        this.FK_id_user = FK_id_user;
    }

    public int getFK_id_event_category() {
        return FK_id_event_category;
    }

    public void setFK_id_event_category(int FK_id_event_category) {
        this.FK_id_event_category = FK_id_event_category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public InputStream getPicture() {
        return picture;
    }

    public void setPicture(InputStream picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Event{" +
                "id_event=" + id_event +
                ", FK_id_user=" + FK_id_user +
                ", FK_id_event_category=" + FK_id_event_category +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", location='" + location + '\'' +
                ", date=" + date +
                ", capacity=" + capacity +
                ", picture=" + picture +
                '}';
    }
}
