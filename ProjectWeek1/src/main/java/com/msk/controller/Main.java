package com.msk.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/calculator")
public class Main extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String result = req.getParameter("result");
        req.setAttribute("result", result);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(req.getContextPath() + "/calculator?result=" + calculator(req, resp));
    }
    protected float calculator(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstNumber = Float.parseFloat(req.getParameter("firstNumber"));
        float secondNumber = Float.parseFloat(req.getParameter("secondNumber"));
        float result = 0;
        String operator = req.getParameter("operator");

        switch (operator) {
            case "+":
                result = firstNumber + secondNumber;
                break;
            case "-":
                result = firstNumber - secondNumber;
                break;
            case "*":
                result = firstNumber * secondNumber;
                break;
            case "/":
                result = firstNumber / secondNumber;
        }

        return result;
    }
}
