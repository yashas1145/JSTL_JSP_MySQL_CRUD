package com.basic.model;

import com.basic.entity.User;

import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Jstl_jndi_model {

    public List<User> list_user(DataSource data){
        Connection connect = null;
        Statement stmt = null;
        ResultSet res = null;

        List<User> list = new ArrayList<>();

        try {
            connect = data.getConnection();

            stmt = connect.createStatement();

            String query = "SELECT * FROM USERS";
            res = stmt.executeQuery(query);

            while(res.next()) {
                int id, age;
                String name, mail;
                id = res.getInt("idusers");
                name = res.getString("username");
                mail = res.getString("usermail");
                age = res.getInt("userage");

                list.add(new User(id, name, mail, age));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean add_user(DataSource data, User user) {
        Connection connect = null;
        PreparedStatement stmt = null;
        ResultSet res = null;

        try {
            connect = data.getConnection();

            String username = user.getUsername();
            String usermail = user.getUsermail();
            int userage = user.getUserage();

            String query = "INSERT INTO USERS (username, usermail, userage) VALUES (?, ?, ?)";

            stmt = connect.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, usermail);
            stmt.setString(3, String.valueOf(userage));

            return stmt.execute();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public User fetch_one_user(DataSource data, int idusers) {
        Connection connect = null;
        PreparedStatement stmt = null;
        ResultSet res = null;

        String username, usermail, userage;
        User user = null;

        try {
            connect = data.getConnection();

            String query = "SELECT * FROM USERS WHERE IDUSERS = (?)";

            stmt = connect.prepareStatement(query);
            stmt.setString(1, String.valueOf(idusers));

            res = stmt.executeQuery();

            while(res.next()) {
                username = res.getString("username");
                usermail = res.getString("usermail");
                userage = res.getString("userage");

                user = new User(username, usermail, Integer.valueOf(userage));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return user;
    }

    public boolean update_user(DataSource data, User user, int id) {
        Connection connect = null;
        PreparedStatement stmt = null;
        ResultSet res = null;

        String username = user.getUsername();
        String usermail = user.getUsermail();
        int age = user.getUserage();

        try {
            connect = data.getConnection();

            String query = "UPDATE USERS SET USERNAME = (?), USERMAIL = (?), USERAGE = (?) WHERE IDUSERS = (?)";

            stmt = connect.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, usermail);
            stmt.setString(3, String.valueOf(age));
            stmt.setString(4, String.valueOf(id));

            return stmt.execute();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean delete_user(DataSource data, int id) {
        Connection connect = null;
        PreparedStatement stmt = null;
        ResultSet res = null;

        try {
            connect = data.getConnection();

            String query = "DELETE FROM USERS WHERE IDUSERS = (?)";

            stmt = connect.prepareStatement(query);
            stmt.setString(1, String.valueOf(id));

            return stmt.execute();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return true;
    }
}
