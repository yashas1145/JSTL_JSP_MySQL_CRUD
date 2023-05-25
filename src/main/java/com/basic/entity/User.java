package com.basic.entity;

public class User {
    private int idusers;
    private String username;
    private String usermail;
    private int userage;

    public User(int idusers, String username, String usermail, int userage) {
        this.idusers = idusers;
        this.username = username;
        this.usermail = usermail;
        this.userage = userage;
    }

    public User(String username, String usermail, int userage) {
        this.username = username;
        this.usermail = usermail;
        this.userage = userage;
    }

    public int getIdusers() {
        return idusers;
    }

    public void setIdusers(int idusers) {
        this.idusers = idusers;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsermail() {
        return usermail;
    }

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public int getUserage() {
        return userage;
    }

    public void setUserage(int userage) {
        this.userage = userage;
    }
}
