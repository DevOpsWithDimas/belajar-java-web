package com.maryanto.dimas.bootcamp.servlet.listener.servlet;

import com.maryanto.dimas.bootcamp.conf.DatabaseService;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Slf4j
@WebServlet(name = "servlet-listener-request", urlPatterns = {"/listener-service"})
public class ServletListenerRequest extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DatabaseService service = (DatabaseService) getServletContext().getAttribute("db");

        log.info("user: {}", service);
        PrintWriter writer = resp.getWriter();
        writer.print("OK!");
    }
}
