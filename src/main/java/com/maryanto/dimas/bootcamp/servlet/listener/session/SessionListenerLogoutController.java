package com.maryanto.dimas.bootcamp.servlet.listener.session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "logout-session-listener", urlPatterns = {"/listener/logout"})
public class SessionListenerLogoutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
//        session destroy
        session.invalidate();

        resp.sendRedirect(req.getContextPath() + "/listener/home");
    }
}
