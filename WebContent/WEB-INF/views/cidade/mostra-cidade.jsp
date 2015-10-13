<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar cidade</title>
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
<legend><h1 style="text-align: center">Alteração da cidade</Kbd></h1></legend>   
<a href="listaCidade">Voltar</a><br><br>
</div>      
<div class="container">
<div class="row">
	<div class="col-md-04 ">
	<c:forEach items="${cidade }" var="cidade" >
	<form action="alteraCidade" method="post" role="form" style="width: 300px; margin: 0 auto;">
	<div class="form-group">
		<input type="hidden" name="idCidade" value="${cidade.idCidade }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">Cidade</label>
		<input type="text" name="nome" value="${cidade.nome }" class="form-control">
		<label class="control-label" for="exampleInputEmail1">UF</label>
		<input type="text" name="uf" value="${cidade.uf }" class="form-control"><br>
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