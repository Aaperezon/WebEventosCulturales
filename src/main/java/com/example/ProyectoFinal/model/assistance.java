package com.example.ProyectoFinal.model;

public class assistance {
    private int id_assistance;
    private int FK_id_user;
    private int FK_id_event;
    public assistance() {

    }
    public assistance(int id_assistance, int FK_id_user, int FK_id_event) {
        this.id_assistance = id_assistance;
        this.FK_id_user = FK_id_user;
        this.FK_id_event = FK_id_event;
    }

    public int getId_assistance() {
        return id_assistance;
    }

    public void setId_assistance(int id_assistance) {
        this.id_assistance = id_assistance;
    }

    public int getFK_id_user() {
        return FK_id_user;
    }

    public void setFK_id_user(int FK_id_user) {
        this.FK_id_user = FK_id_user;
    }

    public int getFK_id_event() {
        return FK_id_event;
    }

    public void setFK_id_event(int FK_id_event) {
        this.FK_id_event = FK_id_event;
    }

    @Override
    public String toString() {
        return "assistance{" +
                "id_assistance=" + id_assistance +
                ", FK_id_user=" + FK_id_user +
                ", FK_id_event=" + FK_id_event +
                '}';
    }
}
