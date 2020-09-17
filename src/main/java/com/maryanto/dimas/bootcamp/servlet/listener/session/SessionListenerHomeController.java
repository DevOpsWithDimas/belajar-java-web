package com.maryanto.dimas.bootcamp.servlet.listener.session;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "home-session-listener", urlPatterns = {"/listener/home"})
public class SessionListenerHomeController extends HttpServlet {

    String html = "<!doctype html>\n" +
            "<html lang='en'>\n" +
            "<head>\n" +
            "    " +
            "<meta charset='UTF-8'>\n" +
            "    <meta name='viewport'\n" +
            "          content='width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'>\n" +
            "    <meta http-equiv='X-UA-Compatible' content='ie=edge'>\n" +
            "    <title>Home</title>\n" +
            "</head>\n" +
            "<body>\n" +
            "    <div>\n" +
            "        <label for='totalUser'>Total User</label>\n" +
            "        <input type='text' name='totalUser' id='totalUser' value='%s' readonly>\n" +
            "    " +
            "</div>\n" +
            "    " +
            "<div>\n" +
            "        <label for='currentUser'>Current User Login</label>\n" +
            "        <input type='text' name='currentUser' id='currentUser' value='%s' readonly>\n" +
            "    </div>\n" +
            "</body>\n" +
            "</html>";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = getServletContext();
//        get data from session
        Integer totalUser = (Integer) context.getAttribute("totalUser");
        Integer currentUser = (Integer) context.getAttribute("currentUser");

        resp.getWriter().print(String.format(html, totalUser, currentUser));
    }
}
