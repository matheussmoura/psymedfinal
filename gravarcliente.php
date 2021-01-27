<?php  
    include('conexao.php');
	$nome = $_POST["nome"];
	$email = $_POST["email"];
    $senha = $_POST["senha"];
    $endereco = $_POST["endereco"];
	$telefone = $_POST["telefone"];
	$cpf = $_POST["cpf"];
    
    $sql = "INSERT INTO `cadastro` (`nome`, `email`, `senha`, `endereco`, `telefone`, `cpf`) VALUES ('".$nome."', '".$email."', '".$senha."', '".$endereco."', '".$telefone."', '".$cpf."')";
    
	if(mysqli_query($conexao, $sql)) {
			echo "<script>
			alert('Gravado com sucesso!');
	        location.href='login.php';
	      </script>";
	
	}else{
		echo "<script>
	        alert('Cliente não cadastrado');
	      </script>";
	}
	mysqli_close($conexao);
?>