<?php 
session_start();
include('conexao.php');

?>
<?php 
include 'menu.php'
?>


    <section class="site-hero overlay" style="background-image: url(images/p1.jpg)" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center" data-aos="fade-up">
            <span class="custom-caption text-uppercase text-white d-block  mb-3">BEM VINDO AO PSYMED </span>
            <h1 class="heading">Somos feito de carne, mas somos obrigados a viver  como se fossemos de ferro.</h1>
          </div>
        </div>
      </div>

      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
    <!-- END section -->


    <section class="section blog-post-entry bg-light">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-7">
            <h2 class="heading" data-aos="fade-up">Noticias</h2>
          </div>
        </div>
        <div class="row">


        <?php
                  $sql = "SELECT * FROM news";
                    $result = mysqli_query($conexao, $sql);      
                  while ( $dados = mysqli_fetch_assoc($result) ) 
                {  
                ?>


              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
                <div class="media media-custom d-block mb-4 h-100">
                  <a href="#" class="mb-4 d-block"><img src="<?php echo $dados['Image'] ?>" alt="Image placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h2 class="mt-0 mb-3"><?php echo $dados['Title'] ?></h2>
                    <span class="meta-post"><a href="#"><?php echo $dados['Subtitle'] ?></span>
                    <p><?php echo substr($dados['Info'], 0, 100);  ?></p>
                  </div>
                </div>
              </div>

                <?php } ?>


        </div>
      </div>
    </section>

    <section class="section blog-post-entry bg-light">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-7">
            <h2 class="heading" data-aos="fade-up">Assistência</h2>
          </div>
        </div>
        <div class="row">

        <?php
                  $sql = "SELECT * FROM cadlugar";
                    $result = mysqli_query($conexao, $sql);      
                  while ( $dados = mysqli_fetch_assoc($result) ) 
                {  
                ?>


              <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">
                <div class="media media-custom d-block mb-4 h-100">
                  
                  <div class="media-body">
                    <h2 class="mt-0 mb-3"><?php echo $dados['namelugar'] ?></h2>
                    <span class="meta-post"><a href="#"><?php echo $dados['infolugar'] ?></span>
                    <p><?php echo $dados['addresslugar'] ?></p>
                    <p><?php echo $dados['tellugar'] ?></p>
                    <p><?php echo $dados['emaillug'] ?></p>
                    <p><?php echo $dados['coordenadas'] ?></p>
                  </div>
                </div>
              </div>

                <?php } ?>

        </div>
      </div>
    </section>

   

   
            <!-- END slider -->
        </div>

      </div>
    </section>

    <footer class="section footer-section">
      <div class="container">
        <div class="row mb-4">
          <div class="col-md-3 mb-5">
            <ul class="list-unstyled link">
              <li><a href="#">Sobre nós</a></li>
              <li><a href="#">Termos &amp; usos</a></li>
              
            </ul>
          </div>
          <div class="col-md-3 mb-5">
            <ul class="list-unstyled link">
            <li><a href="#">Politica de privacidade</a></li>
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
  </body>
</html>