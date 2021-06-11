package com.example.ProyectoFinal.DAO;

import com.example.ProyectoFinal.model.*;
import com.example.ProyectoFinal.utility.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
                userObject.setFK_id_user_type(resultSet.getInt("id_user_type"));
                userObject.setUser(resultSet.getString("user"));
                userObject.setPassword(resultSet.getString("password"));
                userObject.setName(resultSet.getString("name"));
                userObject.setLast_name(resultSet.getString("last_name"));
                System.out.println(userObject.toString());
                System.out.println(user_typeObject.toString());
                return userObject;
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }



    @Override
    public int saveInvitado(User newUser) {
        String sql = "INSERT INTO user (FK_id_user_type, user, password, name, last_name) VALUES(3,?,SHA2(?,224),?,?);";
        int idUser = -1;
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, newUser.getUser());
            preparedStatement.setString(2, newUser.getPassword());
            preparedStatement.setString(3, newUser.getName());
            preparedStatement.setString(4, newUser.getLast_name());
            int affectedRows = preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            resultSet.next();
            idUser = resultSet.getInt(1); // Obtener el indice
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return idUser;
    }

    @Override
    public Boolean saveOrganizer(User newUser) {
        String sql = "INSERT INTO user (FK_id_user_type, user, password, name, last_name) VALUES(2,?,SHA2(?,224),?,?);";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setString(1, newUser.getUser());
            preparedStatement.setString(2, newUser.getPassword());
            preparedStatement.setString(3, newUser.getName());
            preparedStatement.setString(4, newUser.getLast_name());
            int affectedRows = preparedStatement.executeUpdate();
            return true;

        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }

    @Override
    public List<User> getAllOrganizers() {
        List<User> users = new ArrayList();
        String sql = "SELECT id_user, FK_id_user_type, user, password, name, last_name FROM user WHERE FK_id_user_type = ?;";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);

            preparedStatement.setInt(1,2);

            ResultSet resultSet = preparedStatement.executeQuery();
            User user = null;
            while(resultSet.next()){
                user = new User();

                user.setId_user(resultSet.getInt("id_user"));
                user.setFK_id_user_type(resultSet.getInt("FK_id_user_type"));
                user.setUser(resultSet.getString("user"));
                user.setName(resultSet.getString("name"));
                user.setLast_name(resultSet.getString("last_name"));
                users.add(user);
            }
            return users;
        }catch (Exception ex){
            System.out.println("ERROR: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public Boolean deleteUser(int id_user) {
        String sql="DELETE FROM user WHERE id_user=?";
        try {
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setInt(1,id_user);
            preparedStatement.executeUpdate();
            return true;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
