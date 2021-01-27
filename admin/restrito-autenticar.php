<?php
    session_start();
    require "restrito.class.php";
    
    try{
    
        $email = $_POST['email'];
        $senha = $_POST['senha'];
        
        $restrito = new Restrito();
        $restrito->email = $email;
        $restrito->senha = $senha;
        
        if(!$restrito->autenticarUsuario()) throw new Exception("Usuário Inválido");
		
        
		 
        $msg = "Usuário Autenticado";
        $_SESSION['email'] = $restrito->email;
        header("location: ../med/manager.php");
     
    }catch(Exception $e){
        $msg = $e->getMessage();
    }

?>

<?php echo $msg; ?>