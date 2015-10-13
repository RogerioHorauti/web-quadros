<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo produto</title>
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
          
            <li><a href="listaProduto"><span class="glyphicon glyphicon-picture"></span> Galeria</a></li>
          
          </ul>
        </nav>
      </div>
    </legend>
   <legend><h1 style="text-align: center"> Cadastro de produto</Kbd></h1></legend>
    
</div>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-04 ">
                   <form role="form" style="width: 300px; margin: 0 auto;" method="POST" action="adicionaProduto">
					<div class="form-group">
						<label class="control-label" >Nome</label> 
						<input class="form-control" placeholder="Nome" type="text" name="descricao"> 
						<form:errors path="produto.descricao" cssStyle="color:red"/>
						<label class="control-label" >Valor</label> 
						<input class="form-control" placeholder="Valor" type="text" name="valor"> 
						<label class="control-label" >QTD</label> 
						<input class="form-control" placeholder="Quantidade" type="text" name="qtd"> 
						<label class="control-label" >Tipo</label> 
						<input class="form-control" placeholder="Tipo" type="text" name="tipo"> 
						<label class="control-label" >Obs</label> 
						<input class="form-control" placeholder="Obsrvação" type="text" name="obs">
						<label class="control-label" >Imagem</label> 
						<input class="form-control" type="text" name="imagem" value="resources/imagens/">						
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