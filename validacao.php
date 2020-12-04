<html>
<head>
 <meta charset="UTF-8">
 <style>
body {
background-color:#005555;
}
</style>
   <title>  Cadastro  </title>
 </head>
 <body>


  <table border="0" cellpadding="5" cellspacing= "0" width="100%">
     <tr>
	    <td  height="30" ><b> <font face= "arial" color="white"  >Cadastro </b></td>
		<tr>
		</tr>
		<td align="left">
<?php 

 	$erro = Array(); //Declara variável $erro do tipo Array e imprime os erros no final 
			foreach ($_POST as $chv => $vlr){ 
				if($vlr=="" AND substr ($chv,0,3)=="CLI") { //Testa se Campo está vazio
					$erro[]= "O campo: " . substr ($chv,4) . " Não foi informado"; //Grava erro na váriavel Array $erro
				}
			}
			
   
			
				
				
				
		
				if(sizeof ($erro)==0) {  //se a variavel $erro for = 0 ou seja se näao tiver erros gravado na mesma
					//exibição dos dados
					$usuario=$_POST["CLI_LOG_NOME"];
					$senha=$_POST["CLI_LOG_SENHA"];
					if($usuario == "Aline" && $senha == "isabelle"){
						setcookie("usuario",$usuario,time()+20);
						echo 'Bem vindo!';
					}
					else{
						echo 'Senha ou usuário incorretos';
					}

					echo '<p align="right"> <font color= "white"><b>';
					echo 'Dados informados no Cadastro:</b></font></p>';
				
					reset ($_POST); //volta o ponteiro do array para o começo
	
					echo "<table>";
					
					foreach ($_POST as $chv => $vlr) {
					
						if(substr($chv,0,3)=="CLI") {
							echo"<tr>";
							
					

							
						
									echo"<td><b>".substr($chv,4).": </b></td>\n";
									echo"<td><b>" . $vlr . "</b></td>\n";
						
							echo"</tr>";
						
						
					
		
						}
					}
						echo "</table>";
				
				
				
				}	

		
				
				
				
				
				
				foreach($erro as $vlr){ //imprime os erros gravados na váriavel array $erro
						echo "$vlr<br>";
				}
		
 
 
 
?>
	 
 
	
	