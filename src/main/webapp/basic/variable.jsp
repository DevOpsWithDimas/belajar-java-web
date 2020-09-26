<%!
    String namaLengkap = "Dimas Maryanto";
    java.util.Date tanggalLahir = new java.util.Date(725821200000L);
    java.math.BigDecimal saldo = new java.math.BigDecimal(1000000);
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Belajar JSP Scriptlet</title>
</head>
<body>
    <jsp:scriptlet>
        out.println("Halo ini menggunakan scriptlet XML");
    </jsp:scriptlet>

    <% out.println("Halo ini menggunakan scriptlet expresion"); %>

    <hr>
    <form action="#">
        <div>
            <label for="namaLengkap">Nama Lengkap</label>
            <input type="text" name="namaLengkap" id="namaLengkap" value="<%= namaLengkap %>" readonly>
        </div>
        <div>
            <label for="tanggalLahir">Tanggal Lahir</label>
            <input type="text" name="tanggalLahir" id="tanggalLahir" value="<%= tanggalLahir.toString() %>" readonly>
        </div>
        <div>
            <label for="saldo">Saldo</label>
            <input type="text" name="saldo" id="saldo" value="<%= saldo %>" readonly>
        </div>
    </form>
</body>
</html>
