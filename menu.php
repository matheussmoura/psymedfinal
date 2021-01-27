<?php

    if(!isset($_SESSION['cadastro']));  
?>
<!DOCTYPE HTML>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Psymed</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=|Roboto+Sans:400,700|Playfair+Display:400,700">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/fancybox.min.css">
    
    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
    <header class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light">
      <div class="container-fluid">
        <div class="row align-items-center">
          <div class="col-6 col-lg-4 site-logo" data-aos="fade"><a href="index.php">Psymed</a></div>
          <div class="col-6 col-lg-8">


            <div class="site-menu-toggle js-site-menu-toggle"  data-aos="fade">
              <span></span>
              <span></span>
              <span></span>
            </div>

            <div class="site-navbar js-site-navbar">
              <nav role="navigation">
                <div class="container">
                  <div class="row full-height align-items-center">
                    <div class="col-md-6 mx-auto">
                      <ul class="list-unstyled menu">
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="contato.php">Fale conosco</a></li>
                        <li><a href="admin/login.php">Acesso restrito</a></li>
                        <li><a href="med/index.php">Paciente</a></li>
                        <?php
        if(!isset($_SESSION['cadastronome'])){
        ?>
                     <li class="nav-item">
                        <a class="nav-link" href="cadastro.php"><img src="img/login.png" alt="" >Cadastre-se</a>
                    </li>
                
                    <li class="nav-item">
                        <a class="nav-link" href="login.php"><img src="img/man-user.png" alt="" >Login</a>
                    </li>
                    <?php
        } else{
echo "
          <li class='nav-item'>
         
              <a class='nav-link'> Olá, " . $_SESSION['cadastronome']  ." </a>
          </li>
          <li class='nav-item'>
              <a class='nav-link' href=logoff.php>Sair</a>
          </li>";

        }
                    ?>
                      </ul>
                    </div>
                  </div>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </header>