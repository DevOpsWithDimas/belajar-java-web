package com.maryanto.dimas.bootcamp.servlet.example;

import com.maryanto.dimas.bootcamp.servlet.utils.FileUtils;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;


@Slf4j
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "servlet-handle-request", urlPatterns = {"/kirim-file"})
public class ServletHandleFileRequest extends HttpServlet {

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
            "    <td>%s</td>\n" +
            "    " +
            "</tr>\n" +
            "    </tbody>\n" +
            "</table>\n" +
            "</body>\n" +
            "</html>";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nim = req.getParameter("nim");
        String nama = req.getParameter("nama");
        String kota = req.getParameter("kota");
        String tanggalLahir = req.getParameter("tanggalLahir");
        Part filePath = req.getPart("foto");
        String fileName = FileUtils.getSubmittedFileName(filePath);

        log.info("data http POST: {nim: {}, nama: {}, kota: {}, tanggalLahir: {}, fileName: {}}",
                nim, nama, kota, tanggalLahir, fileName);

        StringBuilder url = new StringBuilder(System.getProperty("user.home")).append(File.separator)
                .append("Public").append(File.separator)
                .append(req.getContextPath()).append(File.separator);

        File location = new File(url.toString());
        if (!location.exists())
            location.mkdirs();

        assert fileName != null;
        File file = new File(location, fileName);

        try (InputStream stream = filePath.getInputStream()) {
            Files.copy(stream, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }

        resp.getWriter().print(String.format(html, nim, nama, kota, tanggalLahir, fileName));
    }
}
