<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Relatório de Agendamento</title>
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
            <li><a href="listaUsuario"><span class="glyphicon glyphicon-user"></span> Usuários</a></li>
            <li><a href="listaCidade"><span class="glyphicon glyphicon-flag"></span> Cidade</a></li>
            <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </nav>
      </div>
    </legend>
    
<legend><h1 style="text-align: center">Lista de agendamentos</Kbd></h1></legend>
Seja bem vindo, ${usuarioLogado.nome }<br><br>
</div>
        <br>
        <br>    
		<table class="table table-hover table-bordered table-condensed">
		<tr>
			<th>Cliente</th>
			<th>Telefone</th>
			<th>E-mail</th>
			<th>Data</th>
			<th>Hora</th>
			<th>Status</th>
			<th>Nome quadro</th>
			<th>Valor</th>
		</tr>
		<c:forEach items="${listaDeAgendamentos }" var="lista">
			<tr>
				<td>${lista.cliente }</td>
				<td>${lista.telefone }</td>
				<td>${lista.email}</td>
				<td>${lista.data }</td>
				<td>${lista.hora }</td>
				<td>${lista.status }</td>
				<td>${lista.descricao }</td>
				<td>${lista.valor }</td>
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