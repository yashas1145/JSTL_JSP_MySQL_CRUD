package com.basic.bean;

public class User {
    String first_name;
    String last_name;
    int salary;

    public User() {
        this.first_name = "John";
        this.last_name = "Doe";
        this.salary = 60000;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
