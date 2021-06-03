package com.example.ProyectoFinal.model;

import java.io.Serializable;

public class User implements Serializable {
    private int id_user;
    private User_Type FK_id_user_type;
    private String user;
    private String password;
    private String name;
    private String last_name;

    public User(){
    }

    public User(int id_user, User_Type FK_id_user_type, String user, String password, String name, String last_name) {
        this.id_user = id_user;
        this.FK_id_user_type = FK_id_user_type;
        this.user = user;
        this.password = password;
        this.name = name;
        this.last_name = last_name;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public User_Type getFK_id_user_type() {
        return FK_id_user_type;
    }

    public void setFK_id_user_type(User_Type FK_id_user_type) {
        this.FK_id_user_type = FK_id_user_type;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    @Override
    public String toString() {
        return "User{" +
                "id_user=" + id_user +
                ", FK_id_user_type=" + FK_id_user_type +
                ", user='" + user + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", last_name='" + last_name + '\'' +
                '}';
    }
}
