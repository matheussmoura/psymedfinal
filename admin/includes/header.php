<?php session_start(); ?>
<?php
   if(!isset($_SESSION['email'])) header("location: email.php");  
?>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
    <title>Acesso Restrito</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/styles.css" rel="stylesheet">

  </head>
  <body>
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-5">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.php">Acesso Restrito</a></h1>
	              </div>
	           </div>
	           <div class="col-md-5">
	              <div class="row">
	                <div class="col-lg-12">
	                </div>
	              </div>
	           </div>
	           <div class="col-md-2">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $_SESSION['email']; ?> <b class="caret"></b></a>
							
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href="restrito-sair.php">Sair</a></li>
	                        </ul>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="current"><a href="index.php"><i class="glyphicon glyphicon-home"></i> Início</a></li>
					
                    <li class="submenu">
                         <a href="#">
                            <i class="glyphicon glyphicon-user"></i>Acesso Restrito
                            <span class="caret pull-right"></span>
                         </a>
                         <!-- Sub menu -->
                         <ul>
							<li><a href="restrito-cadastrar.php"><i class="icon-inbox"></i>Cadastrar Usuários administrativos</a></li>
							<li><a href="restrito-lista.php"><i class="icon-inbox"></i>Lista de Usuários </a></li>
							<li><a href="restrito-form-pesquisa-nome.php"><i class="icon-inbox"></i>Pesquisar Usuários </a></li>
                        </ul>
                    </li>  
					
					<li class="submenu">
                         <a href="#">
                      <i class="glyphicon glyphicon-user"></i>Cliente
                            <span class="caret pull-right"></span>
                         </a>
                         <!-- Sub menu -->
                         <ul>
							<li><a href="form-cliente.php"><i class="icon-inbox"></i>Cadastrar Cliente </a></li>
							<li><a href="cliente-lista.php">Clientes Cadastrados</a></li>
							<li><a href="cliente-form-pesquisa-nome.php">Pesquisar cliente</a></li> 
                        </ul>
                    </li>
						<li class="submenu">
                         <a href="#">
                      <i class="glyphicon glyphicon-user"></i>Acomodação
                            <span class="caret pull-right"></span>
                         </a>
                         <!-- Sub menu -->
                         <ul>
							<li><a href="form-produto.php"><i class="icon-inbox"></i>Cadastrar acomodação </a></li>
							<li><a href="produto-lista.php">Acomodações cadastrados</a></li>
							<li><a href="produto-form-pesquisa-nome.php">Pesquisar Acomodações</a></li> 
                        </ul>
                    </li>
					
					 <li class="current"><a href="restrito-sair.php"><i class="glyphicon glyphicon-log-out"></i>Sair</a></li>		
                </ul>
             </div>
		  </div>