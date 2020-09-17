package com.maryanto.dimas.bootcamp.servlet.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "servlet-handle-request", urlPatterns = {"/kirim"})
public class ServletHandleRequest extends HttpServlet {
    
    //language=HTML
    String html = "<!doctype html>\n" +
            "<html lang='en'>\n" +
            "<head>\n" +
            "    " +
            "<meta charset='UTF-8'>\n" +
            "    <meta name='viewport'\n" +
            "          content='width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'>\n" +
            "    <meta http-equiv='X-UA-Compatible' content='ie=edge'>\n" +
            "    <title>Data Mahasiswa</title>\n" +
            "</head>\n" +
            "<body>\n" +
            "<table>\n" +
            "    <thead>\n" +
            "    <tr>\n" +
            "        <td>NIM</td>\n" +
            "        <td>Nama</td>\n" +
            "        <td>Kota</td>\n" +
            "        <td>Tanggal Lahir</td>\n" +
            "        <td></td>\n" +
            "    </tr>\n" +
            "    </thead>\n" +
            "    <tbody>\n" +
            "    <tr>\n" +
            "    " +
            "    <td>%s</td>\n" +
            "    " +
            "    <td>%s</td>\n" +
            "    " +
            "    <td>%s</td>\n" +
            "    " +
            "    <td>%s</td>\n" +
            "    " +
            "    <td></td>\n" +
            "    " +
            "</tr>\n" +
            "    </tbody>\n" +
            "</table>\n" +
            "</body>\n" +
            "</html>";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nim = req.getParameter("nim");
        String nama = req.getParameter("nama");
        String kota = req.getParameter("kota");
        String tanggalLahir = req.getParameter("tanggalLahir");
        log.info("data http GET: {nim: {}, nama: {}, kota: {}, tanggalLahir: {}}",
                nim, nama, kota, tanggalLahir);

        resp.getWriter().print(String.format(html, nim, nama, kota, tanggalLahir));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nim = req.getParameter("nim");
        String nama = req.getParameter("nama");
        String kota = req.getParameter("kota");
        String tanggalLahir = req.getParameter("tanggalLahir");
        log.info("data http POST: {nim: {}, nama: {}, kota: {}, tanggalLahir: {}}",
                nim, nama, kota, tanggalLahir);

        resp.getWriter().print(String.format(html, nim, nama, kota, tanggalLahir));
    }
}
