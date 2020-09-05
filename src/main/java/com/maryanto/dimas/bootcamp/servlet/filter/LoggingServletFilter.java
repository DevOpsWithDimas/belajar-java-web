package com.maryanto.dimas.bootcamp.servlet.filter;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@Slf4j
@WebFilter(urlPatterns = "/*")
public class LoggingServletFilter implements Filter {

    private FilterConfig config;

    @Override
    public void init(FilterConfig config) throws ServletException {
        this.config = config;
        log.info("init servlet filter!");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String uri = request.getRequestURI();
        log.info("request from: {hostname: {}, httpMethod: {}, url: {}, requestDate:{}}",
                servletRequest.getRemoteHost(),
                request.getMethod(),
                uri,
                new Date());

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        log.info("destroy servlet filter");
    }
}
