package com.jobportal.servlet;
import jakarta.servlet.*;import jakarta.servlet.annotation.WebServlet;import jakarta.servlet.http.*;import java.io.IOException;
@WebServlet("/login") public class LoginServlet extends HttpServlet { protected void doPost(HttpServletRequest q,HttpServletResponse p)throws ServletException,IOException {p.setContentType("text/plain");p.getWriter().println("Login servlet receives the form. Database-backed password validation is not implemented yet.");} }
