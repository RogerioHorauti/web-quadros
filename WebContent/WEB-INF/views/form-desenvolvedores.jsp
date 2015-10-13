<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>desenvolvedores</title>
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
<% String perfil=""; %>
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
              <% if(request.getSession().getAttribute("usuarioLogado") == null){ %>
				 <li><a href="novoUsuario"><span class="glyphicon glyphicon-user"></span> Cadastre-se</a></li>
				 <li><a href="formLogin"><span	class="glyphicon glyphicon-log-in"></span> Login</a></li>
              <%}else if(request.getSession().getAttribute("usuarioLogado") != null){ %>
				<li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>			
			  <%} %>
            
            </ul>
          </nav>
        </div>
      </legend>

  


    <div class="contaider bloco22 ">
      <legend><h1 style="text-align: center"> Equipe de Desenvolvimento</Kbd></h1></legend>
     
      <table class="table table-hover table-bordered table-condensed">
        <caption>Equipe</caption>
        <thead>
          <tr >
            <th>Nome</th>
            <th>RA</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
        	<tr class="info">
            <td>Rogerio Yudi Horauti</td>
            <td>1410188</td>
            <td>rogerio_horauti@hotmail.com</td>
          </tr>
        	
        	
          <tr class="info">
            <td>Breno</td>
            <td>1410452</td>
            <td>breno.o.rufino@hotmail.com</td>
          </tr>

          
          <tr class="info">
            <td>Ysa</td>
            <td>456456</td>
            <td>Ysa@hotmail.com</td>
          </tr>
        </tbody>
      </table>
          
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