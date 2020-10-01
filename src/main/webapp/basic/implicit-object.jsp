<%@ page isELIgnored="false" language="java" contentType="text/html; ISO-8859-1" %>
<% session.setAttribute("currentUser", 1); %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP - Implicit Object</title>
</head>
<body>
<form action="#">
    <div>
        <label for="nim">NIM</label>
        <input type="text" id="nim" name="nim" readonly value='<%= request.getParameter("nim") %>'/>
    </div>
    <div>
        <label for="nama">Nama Lengkap</label>
        <input type="text" name="namaLengkap" id="nama" readonly value='<%= request.getParameter("namaLengkap") %>'>
    </div>
    <div>
        <label for="tanggal">Tanggal Lahir</label>
        <input type="text" name="tanggal" id="tanggal" readonly value='<%= request.getParameter("tanggalLahir") %>'>
    </div>

    <hr>

    <div>
        <label for="currentSession">Current User Login</label>
        <input type="number" name="currentSession" id="currentSession" value="<%= session.getAttribute("currentUser") %>" readonly>
    </div>
</form>
</body>
</html>
