package com.example.ProyectoFinal.model;

import java.io.Serializable;

public class User_Full implements Serializable {
    private User_Type user_type;
    private User user;
    public User_Full() {
    }
    public User_Full(User_Type user_type, User user) {
        this.user_type = user_type;
        this.user = user;
    }

    public User_Type getUser_type() {
        return user_type;
    }

    public void setUser_type(User_Type user_type) {
        this.user_type = user_type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "User_Full{" +
                "user_type=" + user_type +
                ", user=" + user +
                '}';
    }
}
