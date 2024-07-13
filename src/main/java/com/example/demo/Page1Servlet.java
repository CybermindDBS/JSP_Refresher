package com.example.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;


@WebServlet(name = "helloServlet", value = "/page1")
public class Page1Servlet extends HttpServlet {

    public void init(){
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getSession().setAttribute("s1", 10);
        response.sendRedirect("page2.jsp");
    }

    public void destroy() {
    }
}