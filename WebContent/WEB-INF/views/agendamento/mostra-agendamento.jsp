<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="lightbox/css/lightbox.css"/>
  <link rel="stylesheet" href="resources/css/estilo.css">
  <link rel="stylesheet" href="resources/css/site2.css">
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="lightbox/js/jquery-1.11.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="lightbox/js/lightbox.min.js"></script>
</head>
<body>
<div class="section">
  <div class="container-fluid titulo2">
    <img src="resources/img/titulo.png" alt="">
    <h1>F R A M E S</h1>
    <h3>&</h3>
    <h3>Fotografias</h3>
  </div>

<div class="container-fluid larguraContent">
  <legend><h1 style="text-align: center">Alterção da cidade</Kbd></h1></legend>   
</div>      
<div class="container">
<div class="row">
	<div class="col-md-04 ">
	<c:forEach items="${agendamento }" var="ag" >
	<form action="alteraCidade" method="post" role="form" style="width: 300px; margin: 0 auto;">
	<div class="form-group">
		<label class="control-label" for="exampleInputEmail1">idAgendamento</label> 
		<input type="text" name="idAgendamento" value="${ag.idAgendamento }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">Data</label>
		<input type="text" name="data" value="${ag.data }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">Hora</label>
		<input type="text" name="Hora" value="${ag.Hora }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">Status</label> 
		<input type="text" name="Status" value="${ag.Status }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">Obs</label>
		<input type="text" name="obs" value="${ag.obs }" class="form-control">
		produtos_idProduto : 
		<input type="text" name="produtos_idProduto" value="${ag.produtos_idProduto }" class="form-control">
		usuarios_idUsuario : 
		<input type="text" name="usuarios_idUsuario" value="${ag.usuarios_idUsuario }" class="form-control">
		usuarios_cidades_idCidade : 
		<input type="text" name="usuarios_cidades_idCidade" value="${ag.usuarios_cidades_idCidade }" class="form-control">
		<button type="submit" class="btn btn-sm btn-primary">Alterar</button>
	</div>
	</form>	
	</c:forEach>	
	</div>
</div>
</div>

        <br>
        <br>
        <br>
        <br>
        <br>

    <div class="container larguraContent ">
        <div id="footerr">
            <p>Copyright © 2015 <a href="">web-quadros</a>, all rights reserved.</p>
        </div>
    </div>
</div>


<br>
<br>
<br>
</body>
</html>