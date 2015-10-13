<%@page import="br.com.quadros.jdbc.javaBeans.Usuario"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
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
<%
	String perfil="";
	if(request.getSession().getAttribute("usuarioLogado")!=null){
		Usuario user = (Usuario)request.getSession().getAttribute("usuarioLogado");
		perfil=user.getPerfil();
	}
%>

<div class="section">

  <div class="container-fluid titulo2">
    <img src="resources/img/titulo.png" alt="">
    <h1>F R A M E S</h1>
    <h3>&</h3>
    <h3>Fotográfias</h3>
  </div>

  <div class="container-fluid larguraContent">
    <legend id="footerr">
      <div class="masthead" >
        <nav>
          <ul class="nav nav-justified">
          
          	<li><a href="index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="listaProduto"><span class="glyphicon glyphicon-picture"></span> Galeria</a></li>
            <li><a href="dev"><span class="glyphicon glyphicon-cog"></span> Desenvolvedores</a></li>
            <% if(request.getSession().getAttribute("usuarioLogado") == null){ %>
				<li><a href="novoUsuario"><span class="glyphicon glyphicon-user"></span> Cadastre-se</a></li>
				<li><a href="formLogin"><span	class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<%}else if(request.getSession().getAttribute("usuarioLogado") != null){ %>
				<%if(perfil.equals("1")){ %>
				 	<li><a href="relatorioDeAgendamento"><span class="glyphicon glyphicon-list-alt"></span> Relatorio De Agendamentos</a>
				<%} %> 
				
				<li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
			<!-- se não estiver ninguém logado aparece login -->
			<%} %>
			    
          </ul>
        </nav>
      </div>
    </legend>
    <% if(request.getSession().getAttribute("usuarioLogado") != null){ %>           	
		Seja bem vindo, ${usuarioLogado.nome }<br><br>
	<%} %>
    <section>
      <section class="carousel slide" id="myCarousel" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <div class="carousel-inner slideTamanho" role="listbox">
          <section class="item active">
            <img src="resources/img/tubarao2.jpg" alt="tubarao2" class="carrosel" width="100%">
            <div class="carousel-caption">
              <h4></h4>
            </div>
          </section>

          <section class="item">
            <img src="resources/img/img1.jpg" alt="img1" class="carrosel " width="100%">
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
          </section>

          <section class="item">
            <img src="resources/img/img2.jpg" alt="img2" class="carrosel" width="100%">
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
          </section>

          <section class="item">
            <img src="resources/img/fotoComb.jpg" alt="fotoComb" class="carrosel" width="100%">
            <div class="carousel-caption">
              <h4></h4>
              <p></p>
            </div>
          </section>
        </div>
        <a href="#myCarousel" class="carousel-control left" data-slide="prev" role="button">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
        </a>
        <a href="#myCarousel" class="carousel-control right" data-slide="next" role="button">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Próximo</span>
        </a>
      </section>

    </section>
    <br>
    <div class="b1"> 
    	<h3 style="text-align: center">Loja de Quadros Virtual</h3>
    	<p>
    		Este site foi desenvolvido com finalidade acadêmica, para o trabalho de conclusão do semestre do Prof° Renan Rodrigues.
		</p>
		
		<p>Nosso site conta com um grande acervo diversificado de Fotografias e obras de pintores renomados.</p>
		<p>
			Fundada em 1995, a galeria se localiza em São Paulo/ SP situada na área nobre da cidade, 
			é uma das mais importantes Galerias de Arte da América Latina.
			No mercado a 20 anos, só trabalhamos com obras certificadas.
		</p>
		<p>
			Desde então, a galeria mantém um calendário regular de exposições de arte contemporânea, 
			principalmente de artistas brasileiros como Tarsila do Amaral , Yeda Pieroni fazem parte do nosso acervo.
		</p>
		<p>
			<b>> Amostra de Gravuras Romero Brito</b> <br>

			<b>> Amostra do pintor Adélio Sarro</b> <br>

			<b>> Espaço para novos talentos</b> <br>

			<b>> Agende a sua visita</b>
		</p>
		<p>Estamos localizados na Avenida Castro de Amaral, nº 1.700 Moema São Paulo- SP</p>
		<p>
			Telefones: +55 11 5675-7865 / 5668-6787<br>
			
			E-mail : lojadequadrosvirtual@lojadequadros.com.br
		</p>
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