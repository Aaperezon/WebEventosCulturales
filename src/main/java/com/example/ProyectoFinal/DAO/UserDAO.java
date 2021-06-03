package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.User;
import com.example.ProyectoFinal.model.User_Type;
import com.example.ProyectoFinal.utility.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAO implements IUserDAO {
    @Override
    public User getUser(String user, String password) {
        String sql = "SELECT id_user_type,type,id_user,user,password,name,last_name FROM user INNER JOIN user_type ON user.FK_id_user_type = user_type.id_user_type WHERE user.user=? AND user.password=SHA2(?,224);";
        try{
            Connection conexion= MySQLConnection.getConnection();
            PreparedStatement preparedStatement=conexion.prepareStatement(sql);
            preparedStatement.setString(1,user);
            preparedStatement.setString(2,password);
            ResultSet resultSet= preparedStatement.executeQuery();
            if (resultSet.next()){
                User userObject=new User();
                User_Type user_typeObject =new User_Type();

                user_typeObject.setId_user_type(resultSet.getInt("id_user_type"));
                user_typeObject.setType(resultSet.getString("type"));
                userObject.setId_user(resultSet.getInt("id_user"));
                userObject.setFK_id_user_type(user_typeObject);
                userObject.setUser(resultSet.getString("user"));
                userObject.setPassword(resultSet.getString("password"));
                userObject.setName(resultSet.getString("name"));
                userObject.setLast_name(resultSet.getString("last_name"));

                return userObject;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @Override
    public User saveInvitado(String user, String password, String name, String last_name) {
        String sql = "INSERT INTO user (FK_id_user_type, user, password, name, last_name) VALUES(3,?,SHA2(?,224),?,?);";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, user);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, last_name);
            int affectedRows = preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            resultSet.next();
            int idUser = resultSet.getInt(1); // Obtener el indice


        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }


        // Pasos para guardar un usuario
        // Establecer la conexion
        // Registrar persona
        // Obtener el id que la base asigno a persona
        // Registras la cuenta
        // Obtener el id que la base asigno a cuenta
        // Devolver el usuario, ya con Id
        return null;
    }
}
