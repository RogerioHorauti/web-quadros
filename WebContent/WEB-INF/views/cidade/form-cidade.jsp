<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar cidade</title>
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
            <li class="active "><a href="index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="listaProduto"><span class="glyphicon glyphicon-picture"></span> Galeria</a></li>
            <li><a href="dev"><span class="glyphicon glyphicon-cog"></span> Desenvolvedores</a></li>
            <li><a href="novoUsuario"><span class="glyphicon glyphicon-user"></span> Cadastre-se</a></li>
            <li><a href="formLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </nav>
      </div>
    </legend>
  <legend><h1 style="text-align: center"> Cadastro de cidade</Kbd></h1></legend>
    
</div>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-04 ">
                   <form role="form" style="width: 300px; margin: 0 auto;"
					method="POST" action="adicionaCidade">
					<div class="form-group">
						<label class="control-label" for="exampleInputEmail1">Cidade</label> 
						<input class="form-control" placeholder="Nome da cidade" type="text" name="nome"> 
						<form:errors path="cidade.nome" cssStyle="color:red"/><br>
						<label class="control-label" for="exampleInputEmail1">UF</label> 
						<input class="form-control" placeholder="UF"
							type="text" name="uf">
						<form:errors path="cidade.uf" cssStyle="color:red"/>
					</div>
					<button type="submit" class="btn btn-sm btn-primary">Gravar</button>
				</form>
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
</body>
</html>