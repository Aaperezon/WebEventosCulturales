package com.example.ProyectoFinal.utility;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
public class MySQLConnection {
    public static Connection getConnection(){
        //               protocolo:tiposervidor://ip|nombre:puerto/bddefault?opciones
        //                                                            &password=123
        String cadena = "jdbc:mysql://localhost:3306/finalprojectweb?user=root";
        // Toda interacción con servicio remoto puede fallar
        try{
            DriverManager.registerDriver(new Driver());
            return DriverManager.getConnection(cadena);
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }
    public static void main(String[] args) {
        Connection conexion = getConnection();
        if(conexion != null)
            System.out.println("Se conectó");
        else
            System.out.println("Ops! Algo pasó!");
    }
}
