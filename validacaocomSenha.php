<?php 
 	$erro = Array(); //Declara variável $erro do tipo Array e imprime os erros no final 
			foreach ($_POST as $chv => $vlr){ 
				if($vlr=="" AND substr ($chv,0,3)=="CLI") { //Testa se Campo está vazio
					$erro[]= "O campo: " . substr ($chv,4) . " Não foi informado"; //Grava erro na váriavel Array $erro
				}
			}
			
   
			 //se todos os campos foram preenchidos
			if(sizeof($erro)==0){ //se a variavel $erro for = 0 ou seja se näao tiver erros gravado na mesma
				if($_POST["CLI_SENHA"] != $_POST["CLI_CONSENHA"]) {
				$erro[]= "Senha não confere com a confirmação de senha";
				}
			}	
				
				
				
		
				if(sizeof ($erro)==0) {  //se a variavel $erro for = 0 ou seja se näao tiver erros gravado na mesma
					//exibição dos dados
					echo '<p align="left"> <font color= "navy"><b>';
					echo 'Dados informados no Cadastro:</b></font></p>';
				
					reset ($_POST); //volta o ponteiro do array para o começo
	
					echo "<table>";
					
					foreach ($_POST as $chv => $vlr) {
					
						if(substr($chv,0,3)=="CLI") {
							echo"<tr>";
							
					

							
							//Se o campo for = a senha ou confirma senha o valor é mascarado
							if (substr($chv,4)=="SENHA" or substr($chv,4)=="CONSENHA"){
									echo"<td><b>".substr($chv,4).": </b></td>\n";
									echo"<td><b>xxxxxxxx</b></td></tr>\n";
							} else {
									echo"<td><b>".substr($chv,4).": </b></td>\n";
									echo"<td><b>" . $vlr . "</b></td>\n";
							}
							echo"</tr>";
						
						
					
		
						}
					}
						echo "</table>";
				
				
				
				}	

		
				
				
				
				
				
				foreach($erro as $vlr){ //imprime os erros gravados na váriavel array $erro
						echo "$vlr<br>";
				}
		
 
 
 
?>
	 
 
	
	