<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="format" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="now" value="<%= new java.util.Date()%>"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%-- include js and css with webjars --%>
    <link rel="stylesheet" href="<c:url value="/webjars/bootstrap/4.5.2/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/webjars/datatables/1.10.21/css/dataTables.bootstrap4.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/webjars/datatables-buttons/1.6.1/css/buttons.bootstrap4.min.css"/>">
    <link rel="stylesheet"
          href="<c:url value="/webjars/datatables-colreorder/1.5.1-1/css/colReorder.bootstrap4.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/webjars/datatables-colvis/1.1.1/css/dataTables.colVis.css"/>">
    <link rel="stylesheet"
          href="<c:url value="/webjars/datatables-responsive/2.2.3/css/responsive.bootstrap4.min.css"/>">
    <script src="<c:url value="/webjars/bootstrap/4.5.2/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/webjars/jquery/3.5.1/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/popper.js/1.16.0/popper.min.js"/>"></script>
    <script src="<c:url value="/webjars/datatables/1.10.21/js/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="/webjars/datatables/1.10.21/js/dataTables.bootstrap4.min.js"/>"></script>
    <script src="<c:url value="/webjars/datatables-buttons/1.6.1/js/buttons.bootstrap4.min.js"/>"></script>
    <script src="<c:url value="/webjars/datatables-colreorder/1.5.1-1/js/colReorder.bootstrap4.min.js"/>"></script>
    <script src="<c:url value="/webjars/datatables-colvis/1.1.1/js/dataTables.colVis.js"/>"></script>
    <script src="<c:url value="/webjars/datatables-responsive/2.2.3/js/responsive.bootstrap4.min.js"/>"></script>

    <title>Belajar JSP - Static Resource with WebJars</title>
</head>
<body class="container">

<h3>Card with Bootstrap </h3>
<div class="card" style="width: 18rem;">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
            content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
</div>

<h3>List with Bootstrap</h3>
<div class="card" style="width: 18rem;">
    <ul class="list-group list-group-flush">
        <li class="list-group-item">Cras justo odio</li>
        <li class="list-group-item">Dapibus ac facilisis in</li>
        <li class="list-group-item">Vestibulum at eros</li>
    </ul>
</div>

<hr>
<h3>Form With Bootstrap</h3>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1">
    </div>
    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<hr>
<h3>Tables with JQuery Datatables</h3>
<table class="table" id="datatables">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
    </tr>
    </tbody>
</table>
<%--include js & css--%>
<script>
    $(document).ready(() => {
        console.log('element jquery loaded!');
        $('#datatables').dataTable();
    });
</script>

</body>
</html>
