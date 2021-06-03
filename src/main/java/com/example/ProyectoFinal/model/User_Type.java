package com.example.ProyectoFinal.model;

public class User_Type {
    private int id_user_type;
    private String type;
    public User_Type() {
    }

    public User_Type(int id_user_type, String type) {
        this.id_user_type = id_user_type;
        this.type = type;
    }

    public int getId_user_type() {
        return id_user_type;
    }

    public void setId_user_type(int id_user_type) {
        this.id_user_type = id_user_type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "User_Type{" +
                "id_user_type=" + id_user_type +
                ", type='" + type + '\'' +
                '}';
    }
}
