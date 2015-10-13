<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alteração de produto</title>
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
<legend><h1 style="text-align: center">Alteração do Produto</Kbd></h1></legend>   
<a href="listaProduto">Voltar</a><br><br>
</div> 
     
<div class="container">
<div class="row">
	<div class="col-md-04 ">
		<c:forEach items="${produtos }" var="produto">
		<form action="alteraProduto" method="post" role="form" style="width: 300px; margin: 0 auto;">
		<div class="form-group">
			<input name="idProduto" type="hidden" value="${produto.idProduto }" class="form-control">
			<label class="control-label">Descrição</label>
			<input name="descricao" type="text" value="${produto.descricao }" class="form-control">
			<label class="control-label">Valor</label>
			<input name="valor" type="text" value="${produto.valor }" class="form-control">
			<label class="control-label">QTD</label>
			<input name="qtd" type="text" value="${produto.qtd }" class="form-control">
			<label class="control-label">Tipo</label>
			<input name="tipo" type="text" value="${produto.tipo }" class="form-control">
			<label class="control-label">Obs</label>
			<input name="obs" type="text" value="${produto.obs }" class="form-control">
			<label class="control-label">Imagem</label>
			<input name="imagem" type="text" value="${produto.imagem }" size="60" class="form-control"><br>
			<input type="submit" value="alterar" class="btn btn-sm btn-primary">
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