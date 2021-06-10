package com.example.ProyectoFinal.model;

import java.io.Serializable;

public class Event_Full implements Serializable {

    private User_Full user_full;
    private Event_Category event_category;
    private Event event;

    public Event_Full() {
    }

    public Event_Full(User_Full user_full, Event_Category event_category, Event event) {
        this.user_full = user_full;
        this.event_category = event_category;
        this.event = event;
    }

    public User_Full getUser_full() {
        return user_full;
    }

    public void setUser_full(User_Full user_full) {
        this.user_full = user_full;
    }

    public Event_Category getEvent_category() {
        return event_category;
    }

    public void setEvent_category(Event_Category event_category) {
        this.event_category = event_category;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    @Override
    public String toString() {
        return "Event_Full{" +
                "user_full=" + user_full +
                ", event_category=" + event_category +
                ", event=" + event +
                '}';
    }
}
