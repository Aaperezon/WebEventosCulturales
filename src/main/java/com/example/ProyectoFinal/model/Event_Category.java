package com.example.ProyectoFinal.model;

import java.io.Serializable;

public class Event_Category implements Serializable {
    private int id_event_category;
    private String category;
    public Event_Category() {
    }
    public Event_Category(int id_event_category, String category) {
        this.id_event_category = id_event_category;
        this.category = category;
    }

    public int getId_event_category() {
        return id_event_category;
    }

    public void setId_event_category(int id_event_category) {
        this.id_event_category = id_event_category;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Event_Category{" +
                "id_event_category=" + id_event_category +
                ", category='" + category + '\'' +
                '}';
    }
}
