<?php
session_start();
include('conexao.php');

$email = $_POST['email'];
$senha = $_POST['senha'];

$sql = "select * from cadastro where email='$email' and senha='$senha'";
echo $sql;
$resultado = mysqli_query($conexao, $sql);
$total     = mysqli_num_rows($resultado);

if ( $total>0 ) {
	$dados = mysqli_fetch_array($resultado);
	$_SESSION['cadastro']       = $dados['id'];
	$_SESSION['cadastronome']  = $dados['nome'];
	$_SESSION['cadastroemail'] = $dados['email'];
    $_SESSION['cadastrosenha'] = $dados['senha'];
    $_SESSION['cadastroendereco']  = $dados['endereco'];
	$_SESSION['cadastrotelefone'] = $dados['telefone'];
	$_SESSION['cadastrocpf'] = $dados['cpf'];
	echo "<script>
	        location.href='index.php';
	      </script>";
} else {
	echo "<script>
	        alert('Cliente não encontrado');
	        location.href='login.php';
	      </script>";
}

?>