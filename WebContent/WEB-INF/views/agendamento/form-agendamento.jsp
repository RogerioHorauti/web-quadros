<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agendamento</title>
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
            <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </nav>
      </div>
    </legend>
    
    <div class="container-fluid larguraContent">
		<legend><h1 style="text-align: center">Agende seu Quadro</Kbd></h1></legend>   
		<a href="listaUsuario">Voltar</a><br><br>
	</div> 
    
<%if (request.getSession().getAttribute("usuarioLogado") != null) {%>
		Seja bem vindo, ${usuarioLogado.nome }<br><br>
<%} %>

  <div class="contaider bloco22"> 
    <div class="row">
      <div class="col-md-04 ">

        <form class="form-horizontal" role="form"  method="POST" action="adicionaAgendamento">

          <div class="form-group">
            <label class="control-label col-sm-1" for="pwd">Data:</label>
            <div class="col-sm-4">    
              <input class="form-control" placeholder="dd/mm/aaaa" type="text" name="data">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-1" for="pwd">Hora:</label>
            <div class="col-sm-4">    
              <input class="form-control" placeholder="hh:mm" type="text" name="hora">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-1" for="pwd">Status:</label>
            <div class="col-sm-4">    
              <input class="form-control" placeholder="Status" type="text" name="status">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-1" for="pwd">Obs:</label>   
            <div class="col-sm-4">    
              <input class="form-control" id="dataCadastro" placeholder="Observação" type="text" name="obs">
            </div>
          </div>

          <div class="form-group">
            <!-- <label class="control-label col-sm-1" for="pwd">produtos_idProduto:</label> -->
            <div class="col-sm-4">  
            <c:forEach items="${produtos }" var="produto" >  
              <input value="${produto.idProduto }" class="form-control"  placeholder="Digite o Email" type="hidden" name="produtos_idProduto">
             </c:forEach>
            </div>
          </div>

          <div class="form-group">
            <!-- <label class="control-label col-sm-1" for="pwd">usuarios_idUsuario:</label> -->
            <div class="col-sm-4">    
              <input value="${usuarioLogado.idUsuario }" class="form-control" placeholder="Digite um nome de usuário" type="hidden" name="usuarios_idUsuario">
            </div>
          </div>

          <div class="form-group">
           <!--  <label class="control-label col-sm-1" for="pwd">usuarios_cidades_idCidade:</label> -->
            <div class="col-sm-4">    
              <input value="${usuarioLogado.cidades_idCidade }" class="form-control" placeholder="Digite uma Senha" type="hidden" name="usuarios_cidades_idCidade">
            </div>
          </div>
                         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" value="Gravar" class="btn btn-sm btn-primary">
                        
        </form>
      </div>
    </div>	
  </div>
</div>

  <div class="container larguraContent ">
    <div id="footerr">
       <p>Copyright © 2015 <a href="">web-quadros</a>, all rights reserved.</p>
    </div>
  </div>
</div>

</body>
</html>