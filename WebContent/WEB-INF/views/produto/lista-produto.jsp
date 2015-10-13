<%@page import="br.com.quadros.jdbc.javaBeans.Usuario"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de produtos</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/lightbox/css/lightbox.css"/>
  <link rel="stylesheet" href="resources/css/estilo.css">
  <link rel="stylesheet" href="resources/css/site2.css">
  <link rel="stylesheet" href="resources/css/galeria.css">
  
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="resources/lightbox/js/jquery-1.11.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="resources/lightbox/js/lightbox.min.js"></script>
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
      <div class="masthead">
        <nav>
          <ul class="nav nav-justified ">
            <li><a href="index.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="dev"><span class="glyphicon glyphicon-cog"></span> Desenvolvedores</a></li>
            <% if(request.getSession().getAttribute("usuarioLogado") == null){ %>
				<li><a href="novoUsuario"><span class="glyphicon glyphicon-user"></span> Cadastre-se</a></li>
				<li><a href="formLogin"><span	class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<!-- senão estiver ninguém logado aparece login -->
			<%}else if(request.getSession().getAttribute("usuarioLogado") != null){ %>
				<%if(perfil.equals("1")){ %>
				 	<li><a href="relatorioDeAgendamento"><span class="glyphicon glyphicon-list-alt"></span> Relatorio De Agendamentos</a>
					<li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
				<%}else if(perfil.equals("2")){ %>
            	<li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
            	<%} %>
            <%} %>
          </ul>
        </nav>
      </div>
    </legend>
  
   <div class="contaider bloco22">
   <%if(perfil.equals("1")){ %>
	Seja bem vindo, ${usuarioLogado.nome }<br><br>
 	<a href="novoProduto">Criar novo produto</a>
	<%} else if(perfil.equals("2")){ %>  
	 	Seja bem vindo, ${usuarioLogado.nome }
	<%} else {%>
		Seja bem vindo, visitante.
	<%} %>
  <legend><h1 style="text-align: center"> Galeria</Kbd></h1></legend> 
  
  <h3 style="text-align: center;">Clique na imagem para visualizar em tela cheia!</h3><br>

   <div class="portlet-content">
    <c:forEach items="${produtos }" var="produto">
       
        <div class="container col-md-6">
        
          <table class="table-bordered table-hover table-condensed">
            <tbody>
              <tr>
                <td rowspan="7">
                  <div class="col-md-14 tabelaTamanho2">
                    <div class="lightbox-content">
                      <a href="${produto.imagem }" data-lightbox="image-1" data-title="Monalisa Leonardo da vinci" class="thumbnail"> 
                        <img src="${produto.imagem }" class="img-responsive dimensoesLinkImagem">
                      </a>
                    </div>
                  </div>
                </td>
              </tr>

              <tr>
                <th>Valor</th>
                <td class="larguraPreco">${produto.valor }</td>
              </tr>

              <tr>
                <th>Quantidade</th>
                <td>${produto.qtd }</td>
              </tr>
                                
              <tr>
                <th>Tipo</th>
                <td>${produto.tipo }</td>
              </tr>
                                
              <tr>
                <th>Obs:</th>
                <td>${produto.obs }</td>
              </tr>
                
              <tr>
                <th>Status</th>
                <td>OK</td>
              </tr>
                
              <%if(perfil.equals("1")){ %>
                	<tr>
	                    <td colspan="2">&nbsp;
	                    <a href="removeProduto?idProduto=${produto.idProduto }">Remover</a>&nbsp;&nbsp;&nbsp;&nbsp;
	                    <a href="mostraProduto?idProduto=${produto.idProduto }">Alterar</a>&nbsp;&nbsp;&nbsp;&nbsp;
                   		<a href="agendar?idProduto=${produto.idProduto }">Agendar</a>
                   		</td>	                 	
	                </tr>
				<%} else if(perfil.equals("2")){ %>
					<tr>
						<td colspan="2">
						<a class="btn btn-primary buttonAgendar" href="agendar?idProduto=${produto.idProduto }">Agendar</a> 
						</td>
					</tr>
				<%} %>
				<% if(request.getSession().getAttribute("usuarioLogado") == null){ %> 
					<tr>
						<td colspan="2">
							<a class="btn btn-primary buttonAgendar" href="formLogin">Agendar</a> 
						</td>
					</tr>
				<%} %>	

              <tr>  
                <td colspan="3" class="AlturatdDescricao"> 
                    <p>${produto.descricao }</p>
                </td>
              </tr>
            </tbody>
          </table>
           <br>
        </div>
        
        
<!-- final aki -->
      
        
        

         </c:forEach> 
	<br>

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