<?php 
session_start();
include('conexao.php');

?>
<?php 
include 'menu.php'
?>
  
  <script language="JavaScript" >
function enviardados(){
 
if(document.dados.nome.value=="" || document.dados.nome.value.length < 8)
{
alert( "Preencha campo NOME corretamente!" );
document.dados.nome.focus();
return false;
}
 
 
if( document.dados.email.value=="" || document.dados.email.value.indexOf('@')==-1 || document.dados.email.value.indexOf('.')==-1 )
{
alert( "Preencha campo E-MAIL corretamente!" );
document.dados.email.focus();
return false;
}
 
if (document.dados.mensagem.value=="")
{
alert( "Preencha o campo MENSAGEM!" );
document.dados.mensagem.focus();
return false;
}
 
if (document.dados.mensagem.value.length < 50 )
{
echo( "É necessario preencher o campo MENSAGEM com mais de 50 caracteres!" );
document.dados.mensagem.focus();
return false;
}
 
return true;
}
 
</script>	
	
	
<div class="container">

	<div id="login">
        <h3 class="text-center text-white pt-5">Psymed</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="cadastro-form" class="form" action="gravar.php" method="post">
                            <h3 class="text-center text-info">Fale conosco</h3>
                            <div class="form-group">
                                <label for="name" class="text-info">Nome:</label><br>
                                <input type="text" name="nome" id="name" class="form-control">
                            </div>                          
                            <div class="form-group">
                                <label for="email" class="text-info">E-mail:</label><br>
                                <input type="text" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="mensagem" class="text-info">Mensagem:</label><br>
                                <textarea class="form-control" id="message" name="mensagem" rows="5"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Enviar">
                            </div>                          
                        </form>
                    </div>
                </div>
            </div>    
        </div>
	</div>
</div>

<footer class="section footer-section">
      <div class="container">
        <div class="row mb-4">
          <div class="col-md-3 mb-5">
            <ul class="list-unstyled link">
              <li><a href="#">Sobre nós</a></li>
              <li><a href="#">Termos &amp; usos</a></li>
              <li><a href="#">Politica de privacidade</a></li>
            </ul>
          </div>
          <div class="col-md-3 mb-5">
            <ul class="list-unstyled link">
                <li><a href="#">Sobre nós</a></li>
              <li><a href="contato.php">Fale conosco</a></li>
            </ul>
          </div>
          <div class="col-md-3 mb-5 pr-md-5 contact-info">
            <!-- <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li> -->
            <p><span class="d-block"><span class="ion-ios-location h5 mr-3 text-primary"></span>Endereço:</span> <span> 198 West 21th Street, <br> Suite 721 New York NY 10016</span></p>
            <p><span class="d-block"><span class="ion-ios-telephone h5 mr-3 text-primary"></span>Telefone:</span> <span> (+1) 435 3533</span></p>
            <p><span class="d-block"><span class="ion-ios-email h5 mr-3 text-primary"></span>Email:</span> <span> info@domain.com</span></p>
          </div>
        </div>
        <div class="row pt-5">
          <p class="col-md-6 text-left">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Direitos autorais &copy;<script>document.write(new Date().getFullYear());</script> Todos os direitos reservados | Esse template é feito com <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </p>
            
          <p class="col-md-6 text-right social">
            <a href="#"><span class="fa fa-tripadvisor"></span></a>
            <a href="#"><span class="fa fa-facebook"></span></a>
            <a href="#"><span class="fa fa-twitter"></span></a>
            <a href="#"><span class="fa fa-linkedin"></span></a>
            <a href="#"><span class="fa fa-vimeo"></span></a>
          </p>
        </div>
      </div>
    </footer>
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    
    
    <script src="js/aos.js"></script>
    
    <script src="js/bootstrap-datepicker.js"></script> 
    <script src="js/jquery.timepicker.min.js"></script> 

    

    <script src="js/main.js?v=0.1"></script>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>