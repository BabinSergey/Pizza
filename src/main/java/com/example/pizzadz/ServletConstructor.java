package com.example.pizzadz;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletConstructor", value = "/ServletConstructor")
public class ServletConstructor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] cheese = request.getParameterValues("PizzaCon");
        String sizePizza = request.getParameter("SizeCon");

        if (cheese != null && sizePizza != null) {
            request.getSession().setAttribute("cheese", cheese);
            request.getSession().setAttribute("sizePizza", sizePizza);
            getServletContext().getRequestDispatcher("/contacts.jsp").forward(request,response);
        } else {
            getServletContext().getRequestDispatcher("/constructorError.jsp").forward(request,response);
        }





    }
}
