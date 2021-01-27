<?php 

require "conexao.class.php";

class restrito{
    
    public $id;
	public $nome;
    public $email;
    public $senha;
    
    public function autenticarUsuario(){
        $pdo = Conexao::conexao();
        $sql = "SELECT email,senha FROM restrito WHERE email = '$this->email' AND senha ='$this->senha'";
        $consulta = $pdo->query($sql);
        $dados = false;
        
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados = true;
        }
        return $dados;
    }
    
    
    public function inserir(){
    
        $pdo = Conexao::conexao();
        $sql = 'Insert into restrito values(default, :nome, :email, :senha)';
        $stmt = $pdo->prepare($sql);

        $stmt->execute(array(
        ':nome' => $this->nome,
        ':email' => $this->email,
        ':senha' => $this->senha
         
    ));    
}
    
     public function lista(){
        $pdo = Conexao::conexao();
        
        $sql  = "SELECT * FROM restrito;";
        $consulta = $pdo->query($sql);
        $dados = null;
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados[] = array(
            "id" => $linha['codrestrito'],
            "nome" => $linha['nome'],
            "email" => $linha['email'],       
            "senha" => $linha['senha']   
                  
            );     
        }
        $pdo = null;
        return $dados;
    }
    
    
         public function pesquisarPorNome($nome){
        $pdo = Conexao::conexao();
        
        $sql = "SELECT * FROM restrito WHERE nome like '%$nome%'";
        $consulta = $pdo->query($sql);
        
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados[] = array(
                "id" => $linha['codrestrito'],
                "nome" => $linha['nome'],
                "email" => $linha['email'],
                "senha" => $linha['senha'],
                
               
            );     
        }
        $pdo = null;
        return $dados;
    }
	
	
	public function visualizar($restrito){
        $pdo = Conexao::conexao();
        $sql = "SELECT * FROM restrito where codrestrito =".$restrito->getId();
        $consulta = $pdo->query($sql);
        
        $dados = null;
        
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados = new Restrito();
            $dados -> $linha['codrestrito'];
            $dados -> $linha['nome'];
            $dados -> $linha['email'];
            $dados -> $linha['senha'];
           
            
        }
        $pdo = null;
        return $dados;
        
        
        }
	
	
	
	
	
	
    
    public function excluir(){
        $pdo = Conexao::conexao();
        $sql = 'DELETE FROM restrito WHERE codrestrito= :id';
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array(
            ':id'=>$this->id
        ));        
        
    }
    
     public function loginExiste(){
        $pdo = Conexao::conexao();
        $sql = "SELECT * FROM restrito WHERE email = '$this->email'";
        $consulta = $pdo->query($sql);
        $total = $consulta->rowCount();
        
        if($total>0){
            return true;
        }else{
            return false;    
        }
    }
    
}
    