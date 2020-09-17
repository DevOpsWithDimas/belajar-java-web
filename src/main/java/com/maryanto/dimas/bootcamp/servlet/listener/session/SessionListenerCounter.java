package com.maryanto.dimas.bootcamp.servlet.listener.session;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@Slf4j
@WebListener
public class SessionListenerCounter implements HttpSessionListener {

    private ServletContext context;
    private Integer total = 0;
    private Integer current = 0;

    @Override
    public void sessionCreated(HttpSessionEvent event) {
        this.total += 1;
        this.current += 1;
        log.info("totalUser: {}, currentUser: {}", total, current);

        this.context = event.getSession().getServletContext();
        this.context.setAttribute("totalUser", total);
        this.context.setAttribute("currentUser", current);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
        current -= 1;
        this.context.setAttribute("currentUser", current);
        log.info("totalUser: {}, currentUser: {}", total, current);
    }
}
