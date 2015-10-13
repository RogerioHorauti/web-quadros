<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de usuários</title>
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
            <li><a href="index.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="listaProduto"><span class="glyphicon glyphicon-picture"></span> Galeria</a></li>
            <li><a href="relatorioDeAgendamento"><span class="glyphicon glyphicon-list-alt"></span> Relatorio De Agendamentos</a>          	
           	<li><a href="listaCidade"><span class="glyphicon glyphicon-flag"></span> Cidade</a></li>
            <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </nav>
      </div>
    </legend>
    
<legend><h1 style="text-align: center">Lista de usuários</Kbd></h1></legend>
Seja bem vindo, ${usuarioLogado.nome }<br><br>
<a href="novoUsuario">Criar novo usuario</a><br><br>
</div>
        <br>
        <br>    
		<table class="table table-hover table-bordered table-condensed">
		<tr>
			<th>perfil</th>
			<th>nome</th>
			<th>cpg</th>
			<th>rg</th>
			<th>data nascimento</th>
			<th>endereço</th>
			<th>bairro</th>
			<th>telefone</th>
			<th>email</th>
			<th>login</th>
			<th>senha</th>
			<th>cidade_idCidade</th>
			<th>remover</th>
			<th>alterar</th>
		</tr>
		<c:forEach items="${usuarios }" var="usuario" >
			<tr>
				<td>${usuario.perfil }</td>
				<td>${usuario.nome }</td>
				<td>${usuario.cpf }</td>
				<td>${usuario.rg }</td>
				<td>${usuario.dataNasc }</td>
				<td>${usuario.endereco }</td>
				<td>${usuario.bairro }</td>
				<td>${usuario.telefone }</td>
				<td>${usuario.email }</td>
				<td>${usuario.login }</td>
				<td>${usuario.senha }</td>
				<td>${usuario.cidades_idCidade }</td>
				
				<td><a href="removeUsuario?idUsuario=${usuario.idUsuario }">Remover</a></td>
				<td><a href="mostraUsuario?idUsuario=${usuario.idUsuario }">Alterar</a></td>
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