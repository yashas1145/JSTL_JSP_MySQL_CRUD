package com.basic.jstl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("forward");

        switch (address) {
            case "introduction_jstl":
                request.getServletContext().getRequestDispatcher("/jstl/introduction.jsp").forward(request, response);
                break;

            case "core_tag":
                request.getServletContext().getRequestDispatcher("/jstl/core_tag.jsp").forward(request, response);
                break;

            case "redirection":
                request.getServletContext().getRequestDispatcher("/jstl/redirection.jsp").forward(request, response);
                break;

            case "function":
                request.getServletContext().getRequestDispatcher("/jstl/functions.jsp").forward(request, response);
                break;

            case "xml_tag":
                request.getServletContext().getRequestDispatcher("/jstl/xml_tag.jsp").forward(request, response);
                break;

            case "introduction_i18n":
                request.getServletContext().getRequestDispatcher("/i18n/introduction.jsp").forward(request, response);
                break;

            case "sql_connector":
                request.getServletContext().getRequestDispatcher("/mysql/index.jsp").forward(request, response);
                break;

            case "index":
                request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
