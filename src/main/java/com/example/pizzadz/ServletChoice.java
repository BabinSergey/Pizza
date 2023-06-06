package com.example.pizzadz;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletChoice", value = "/ServletChoice")
public class ServletChoice extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("further") != null) {
            String[] values = request.getParameterValues("pizza");
            request.getSession().setAttribute("pizza", values);
            Boolean further = true;
            request.getSession().setAttribute("further", further);
            getServletContext().getRequestDispatcher("/topping.jsp").forward(request,response);
        } else if (request.getParameter("collect") != null) {
            Boolean collect = true;
            request.getSession().setAttribute("collect", collect);
            getServletContext().getRequestDispatcher("/constructor.jsp").forward(request,response);
        }
    }
}
