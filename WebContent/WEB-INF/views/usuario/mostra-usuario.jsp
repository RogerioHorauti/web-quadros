<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dinput">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alteração de usuário</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<legend><h1 style="text-align: center">Alteração do Usuário</Kbd></h1></legend>   
<a href="listaUsuario">Voltar</a><br><br>
</div>   

<div class="container">
<div class="row">
<div class="col-md-04 ">	
	<c:forEach items="${usuarios }" var="usuario">
		<form action="alteraUsuario" method="post" role="form" style="width: 300px; margin: 0 auto;">
		<div class="form-group">

				<label class="control-label">perfil</label>
				<input type="text" name="perfil" value="${usuario.perfil }" class="form-control"/>
				<label class="control-label">nome</label> 
				<input type="text" name="nome" value="${usuario.nome }" class="form-control"/>
				<label class="control-label">cpf</label> 
				<input type="text" name="cpf" value="${usuario.cpf }" class="form-control"/>
				<label class="control-label">rg</label> 
				<input type="text" name="rg" value="${usuario.rg }" class="form-control"/>
				<label class="control-label">data nascimento</label> 
				<input type="text" name="dataNasc" value="${usuario.dataNasc }" class="form-control"/>
				<label class="control-label">endereço</label> 
				<input type="text" name="endereco" value="${usuario.endereco }" class="form-control"/>
				<label class="control-label">bairro</label> 
				<input type="text" name="bairro" value="${usuario.bairro }" class="form-control"/>
				<label class="control-label">telefone</label> 
				<input type="text" name="telefone" value="${usuario.telefone }" class="form-control"/>
				<label class="control-label">email</label> 
				<input type="text" name="email" value="${usuario.email }" class="form-control"/>
				<label class="control-label">login</label> 
				<input type="text" name="login" value="${usuario.login }" class="form-control"/>
				<label class="control-label">senha</label> 
				<input type="text" name="senha" value="${usuario.senha }" class="form-control"/>
				<label class="control-label">idCidade</label> 
				<input type="text" name="cidades_idCidade" value="${usuario.cidades_idCidade }" class="form-control"/>
				
		</div>
		<button type="submit" class="btn btn-sm btn-primary">Alterar</button>
		<input type="hidden" name="idUsuario" value="${usuario.idUsuario }" class="form-control"/>
		<input type="hidden" name="dataUltimoAgendamento" value="${usuario.dataUltimoAgendamento }" class="form-control"/>
		<input type="hidden" name="dataCadastro" value="${usuario.dataCadastro}" class="form-control"/>
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