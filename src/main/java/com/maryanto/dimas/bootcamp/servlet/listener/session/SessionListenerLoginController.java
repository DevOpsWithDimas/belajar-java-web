package com.maryanto.dimas.bootcamp.servlet.listener.session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login-session-listener", urlPatterns = {"/listener/login"})
public class SessionListenerLoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //language=HTML
        String html = "<!doctype html>\n" +
                "<html lang='en'>\n" +
                "<head>\n" +
                "    " +
                "<meta charset='UTF-8'>\n" +
                "    <meta name='viewport'\n" +
                "          content='width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'>\n" +
                "    <meta http-equiv='X-UA-Compatible' content='ie=edge'>\n" +
                "    <title>Login Form</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "<form action='/bootcamp-java-webapp/listener/login' method='post'>\n" +
                "    <div>\n" +
                "        <label for='username'>Username</label>\n" +
                "        <input type='text' name='username' id='username'>\n" +
                "    </div>\n" +
                "    <div>\n" +
                "        <label for='password'>Password</label>\n" +
                "        <input type='password' name='password' id='password'>\n" +
                "    </div>\n" +
                "    <div>\n" +
                "        <button type='submit'>Submit</button>\n" +
                "        <button type='reset'>Reset</button>\n" +
                "    </div>\n" +
                "</form>\n" +
                "</body>\n" +
                "</html>";
        resp.getWriter().print(html);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userName = req.getParameter("username");
//        create create data session
        session.setAttribute("uname", userName);

        resp.sendRedirect(req.getContextPath() + "/listener/home");

    }
}
