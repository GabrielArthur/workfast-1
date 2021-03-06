<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<!-- Importando a biblioteca Taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WorkFast</title>

	<!-- Boostrap via CDN -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	
	<!-- Fonte Google -->
	<link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">

	<!-- Jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- Jquery Mask -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>

	<!-- Jquery validate -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/localization/messages_pt_BR.js"></script>
	
	
	<!-- C�digo JavaScript desta P�gina(P�gina de cadastro) -->	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/cliente/cadastroClienteFisico.js"></script>
	
	<!-- C�digo css desta P�gina(P�gina de cadastro) -->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/cadastro.css"/>
	
</head>
<body>

	<div class="container" >

		<div>
			<img id="img_logo" src="<%=request.getContextPath()%>/resources/img/logo_workfast.png" class="img-responsive">
		</div>

		
		<div class="panel panel-default col-sm-5" id="container_cadastro">
			<h2 id="txt_cadastrar">Cadastre seus dados pessoais</h2>

			<!-- Formul�rio de cadastro-->
			<div class="panel-body">
			
				<form action="salvarDadosPessoais?idTipoAcesso=${usuarioLogado.tipo_acesso.id}"  method="post">
				   <input type="hidden" value="${usuarioLogado.id}" name="usuario">
				    <input type="hidden" value="" name="nomeFantasia">
				     <input type="hidden" value="" name="razaoSocial">
					<div class="form-group">
						<label for="cpf">CPF:</label>
						<input type="text"  required="required" class="form-control" id="cpf" placeholder="Digite seu cpf" name="cpfCnpj">
					</div>
					
					<div class="form-group">
						<label for="rg">RG:</label>
						<input type="text"  class="form-control" id="rg" placeholder="Digite  seu RG" name="rgIe">
					</div>
					
					<div class="form-group">
						<label for="data_nascimento">Data de Nascimento:</label>
						<input type="text"  class="form-control" id="dataNascimento" placeholder="xx/xx/xxxx" name="dataNascimento">
					</div>
					
					<div class="form-group">
						<label >Sexo:</label>
						<div> 
							<div class="form-group">
								<select id="tipo_usuario" name="sexo" class="form-control" >
									<option value="1">Masculino</option>
									<option value="2">Feminino</option>
								</select>
							</div>
						</div>
					</div>
										
					<div class="form-group">
						<label for="telefone">N�mero Telefone fixo :</label>
						<input type="text"  class="form-control" id="telefone" placeholder="(xx) xxxx-xxxx" name="telefone">
					</div>
					
					<div class="form-group">
						<label for="celular">N�mero Celular :</label>
						<input type="text"  class="form-control" id="celular" placeholder="(xx) 9 xxxx-xxxx" name="celular">
					</div>		
					
					
					<div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" id="button_cadastrar" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> Enviar</button>
						</div>
					</div>	
					
					
				</form>
			</div>
		</div>
	</div>
</div>





</body>
</html>