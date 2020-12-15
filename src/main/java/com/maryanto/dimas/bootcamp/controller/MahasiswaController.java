package com.maryanto.dimas.bootcamp.controller;

import com.maryanto.dimas.bootcamp.model.Mahasiswa;
import com.maryanto.dimas.bootcamp.service.MahasiswaService;
import com.maryanto.dimas.bootcamp.service.impl.MahasiswaDummyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "mahasiswa-list-controller", urlPatterns = {"/mahasiswa/list"})
public class MahasiswaController extends HttpServlet {

    private MahasiswaService service;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        service = new MahasiswaDummyServiceImpl();
        List<Mahasiswa> list = service.findAll();
        req.setAttribute("lists", list);
//        send attribute to jsp
        req.getRequestDispatcher("/WEB-INF/mahasiswa/list-mahasiswa.jsp").forward(req, resp);
    }
}
