<%@page import="br.com.quadros.jdbc.javaBeans.Usuario"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<%	
	String perfil="";
	if(request.getSession().getAttribute("usuarioLogado")!=null){
		Usuario user = (Usuario)request.getSession().getAttribute("usuarioLogado");
		perfil=user.getPerfil();
	}else if(perfil.equals("1")){ %>
		<title>Cadastro de Usuarios</title>
	<%} else if(perfil.equals("") || perfil.equals("2")) { %>
		<title>Cadastro de Cliente</title>
	<%} %>
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
            <li><a href="dev"><span class="glyphicon glyphicon-cog"></span> Desenvolvedores</a></li>
            <% if(request.getSession().getAttribute("usuarioLogado") == null){ %>
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

    
  <legend><h1 style="text-align: center"> Cadastre-se Aqui</Kbd></h1></legend>

	<a href="listaUsuario">Voltar</a><br><br>
	


  <div class="contaider bloco22"> 
    <div class="row">
      <div class="col-md-04 ">

        <form class="form-horizontal" role="form"  method="POST" action="adicionaUsuario">
         
         <%if(perfil.equals("1")){ %>
        	<div class="form-group">	        
		        <div class="col-sm-4">  
		        	 <label class="control-label" for="pwd">Perfil: 1 - Funcionário, 2 - Cliente</label>                           
		        	<input type="text" class="form-control" id="inputPerfil" placeholder="Tipo de perfil"  name="perfil">
		        </div>                      
	        </div>	
		<%} else if(perfil.equals("") || perfil.equals("2")) { %>
			<input type="hidden" value="2" name="perfil"> 
		<%} %>

          <div class="form-group">           
            <div class="col-sm-4">
            	<label class="control-label" for="pwd">Nome:</label>    
              	<input class="form-control" id="inputNome" placeholder="Digite o nome completo" type="text" name="nome">
            </div>
          </div>

          <div class="form-group">           
            <div class="col-sm-4">
            	<label class="control-label col-sm-1" for="pwd">CPF:</label>    
              	<input class="form-control" placeholder="Digite o CPF" type="text" name="cpf">
            </div>
          </div>

          <div class="form-group">           
            <div class="col-sm-4">  
            	<label class="control-label col-sm-1" for="pwd">RG:</label>  
              	<input class="form-control" placeholder="Digite o RG" type="text" name="rg">
            </div>
          </div>

          <div class="form-group">     
            <div class="col-sm-4">
            	<label class="control-label col-sm-1" for="pwd">Data Nascimento:</label>    
              	<input class="form-control" id="dataNascimento" placeholder="Digite a data de nascimento" type="text" name="dataNasc"/>
            </div>
          </div>

          <div class="form-group">           
            <div class="col-sm-4">
				<label class="control-label col-sm-1" for="pwd">Endereço:</label>   
              	<input class="form-control" placeholder="Digite o Endereço" type="text" name="endereco">
            </div>
          </div>

          <div class="form-group">            
            <div class="col-sm-4">
            	<label class="control-label col-sm-1" for="pwd">Bairro:</label>    
              	<input class="form-control" placeholder="Digite o Bairro" type="text" name="bairro">
            </div>
          </div>

          <div class="form-group">            
            <div class="col-sm-4"> 
		  		<label class="control-label col-sm-1" for="pwd">Telefone:</label>
              	<input class="form-control" placeholder="Digite o Telefone" type="text" name="telefone">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-4">    
              <input class="form-control" id="dataCadastro" placeholder="Digite a data de cadastro" type="hidden" name="dataCadastro">
            </div>
          </div>

          <legend><h1 style="text-align: center"> Dados Para Acesso</h1></legend>

          <div class="form-group">           
            <div class="col-sm-4">  
            	<label class="control-label col-sm-1" for="pwd">Email:</label>  
             	<input class="form-control"  placeholder="Digite o Email" type="email" name="email">
            </div>
          </div>

          <div class="form-group">           
            <div class="col-sm-4"> 
            	<label class="control-label col-sm-1" for="pwd">Login:</label>   
              	<input class="form-control" placeholder="Digite um nome de usuário" type="text" name="login">
            </div>
          </div>

          <div class="form-group">            
            <div class="col-sm-4"> 
            	<label class="control-label col-sm-1" for="pwd">Senha:</label>   
             	<input class="form-control" placeholder="Digite uma Senha" type="password" name="senha">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-4">    
              <input class="form-control" id="dataUltimoAgendamento" placeholder="Digite ultima data de Agendamento" type="hidden" name="dataUltimoAgendamento">
            </div>
          </div>

          <div class="form-group">            
            <div class="col-sm-4"> 
            	<label class="control-label col-sm-1" for="pwd">Cidade:</label>
	              <select class="form-control" id="" name="cidades_idCidade">
	                <c:forEach items="${cidades}" var="cidade" >
	                  <option value="${cidade.idCidade }" >${cidade.nome }</option>
	                </c:forEach>
	              </select>
            </div>
          </div>
                         
         
         
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