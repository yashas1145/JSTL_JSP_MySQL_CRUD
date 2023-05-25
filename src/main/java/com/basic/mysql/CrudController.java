package com.basic.mysql;

import com.basic.entity.User;
import com.basic.model.Jstl_jndi_model;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@WebServlet(name = "CrudController", value = "/CrudController")
public class CrudController extends HttpServlet {

    @Resource(name = "jdbc/jstl_jndi")
    private DataSource data;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operation = request.getParameter("operation");
        operation = operation.toLowerCase();

        switch (operation) {
            case "index":
                request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                break;

            case "list_user":
                list_user(request, response);
                break;

            case "insert_user":
                add_user(request, response);
                break;

            case "update_user":
                update_user(request, response, Integer.valueOf(request.getParameter("idusers")));
                break;

            case "delete_user":
                delete_user(request, response, Integer.valueOf(request.getParameter("idusers")));
                break;

            default:
                request.getServletContext().getRequestDispatcher("/mysql/error.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String crud = request.getParameter("crud");

        switch (crud) {
            case "add_user_operation":
                add_user_logic(request, response);
                break;

            case "update_user_operation":
                update_user_logic(request, response);
                break;

            case "delete_user_operation":
                delete_user_logic(request, response);
                break;

            default:
                request.getServletContext().getRequestDispatcher("/mysql/error.jsp").forward(request, response);
        }
    }

    public void list_user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = new ArrayList<>();
        list = new Jstl_jndi_model().list_user(data);
        request.setAttribute("list_user", list);
        request.getServletContext().getRequestDispatcher("/mysql/list_user.jsp").forward(request, response);
    }

    public void add_user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("title", "Add a new user");
        request.getServletContext().getRequestDispatcher("/mysql/add_user.jsp").forward(request, response);
    }

    public void add_user_logic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("username"), request.getParameter("usermail"), Integer.parseInt(request.getParameter("userage")));
        new Jstl_jndi_model().add_user(data, user);
        list_user(request, response);
    }

    public void update_user(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        request.setAttribute("title", "Update a user");
        User user = new Jstl_jndi_model().fetch_one_user(data, id);
        request.setAttribute("user", user);
        request.getServletContext().getRequestDispatcher("/mysql/update_user.jsp").forward(request, response);
    }

    public void update_user_logic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("username"), request.getParameter("usermail"), Integer.parseInt(request.getParameter("userage")));
        new Jstl_jndi_model().update_user(data, user, Integer.valueOf(request.getParameter("user_id")));
        list_user(request, response);
    }

    public void delete_user(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        request.setAttribute("title", "Delete user");
        User user = new Jstl_jndi_model().fetch_one_user(data, id);
        request.setAttribute("user", user);
        request.getServletContext().getRequestDispatcher("/mysql/delete_user.jsp").forward(request, response);
    }

    public void delete_user_logic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String choice = request.getParameter("choice");
        switch(choice) {
            case "yes":
                new Jstl_jndi_model().delete_user(data, Integer.valueOf(request.getParameter("user_id")));
                list_user(request, response);
                break;

            case "no":
                list_user(request, response);
                break;

            default:
                list_user(request, response);
                break;
        }
    }
}
