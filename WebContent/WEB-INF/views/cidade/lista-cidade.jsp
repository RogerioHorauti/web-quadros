<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Lista de cidades</title>
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
 
    <legend id="footerr">
      <div class="masthead" >
        <nav>
          <ul class="nav nav-justified">
            <li><a href="index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="listaProduto"><span class="glyphicon glyphicon-picture"></span> Galeria</a></li>
            <li><a href="relatorioDeAgendamento"><span class="glyphicon glyphicon-list-alt"></span> Relatorio De Agendamentos</a>             
            <li><a href="listaUsuario"><span class="glyphicon glyphicon-user"></span> Usuário</a></li>
            <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </nav>
      </div>
    </legend>
    
<legend><h1 style="text-align: center">Lista de cidades</Kbd></h1></legend>
<a href="novaCidade">Criar nova cidade</a><br><br>
</div>
        <br>
        <br>    
		<table class="table table-hover table-bordered table-condensed">
		<tr>
			<th>ID</th>
			<th>Cidade</th>
			<th>UF</th>
			<td colspan="2"></td>
		</tr>
		<c:forEach items="${cidades }" var="cidade" >
			<tr>
				<td>${cidade.idCidade }</td>
				<td>${cidade.nome }</td>
				<td>${cidade.uf }</td>
				<td><a href="removeCidade?idCidade=${cidade.idCidade }">Remover</a></td>
				<td><a href="mostraCidade?idCidade=${cidade.idCidade }">Alterar</a></td>
			</tr>
		</c:forEach>
		</table>
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
</body>
</html>