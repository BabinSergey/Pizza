package com.example.pizzadz;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletTopping", value = "/ServletTopping")
public class ServletTopping extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String[] topping = request.getParameterValues("ingredient");
        request.getSession().setAttribute("topping", topping);

        getServletContext().getRequestDispatcher("/contacts.jsp").forward(request,response);
    }
}
