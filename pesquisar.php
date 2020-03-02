<?php
include_once "conexao.php";
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Mapa de Sala ICB</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<p>&nbsp;</p>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Pesquisar</title>		
	</head>
	<body>
		
		<h1>Pesquisar Sala ou Anfiteatro</h1>
		
		 <form name="Cadastro" action="pesquisa-sala-anfiteatro.php" method="POST">
			<label>Selecione o Dia da Semana:</label>
				<select name="Dia da Semana,">
					<option value="1">Segunda-Feira</option>
					<option value="2">Terca-Feira</option>
					<option value="3">Quarta-Feira</option>
					<option value="4">Quinta-Feira</option>
					<option value="5">Sexta-Feira</option>
					<option value="6">Sabado</option>
					<option value="7">Dia Invalido</option>
				</select><br>
			
			<input name="SendPesqUser" type="submit" value="Pesquisar">
		</form><br><br>
		
		<?php
		$SendPesqUser = filter_input(INPUT_POST, 'SendPesqUser', FILTER_SANITIZE_STRING);
		if($SendPesqUser){
			$dia_da_semana = filter_input(INPUT_POST, 'dia_da_semana', FILTER_SANITIZE_STRING);
			$result_sala_anfiteatro = "SELECT * FROM mapa2020 WHERE dia_da_semana LIKE '%$dia_da_semana%'";
			$resultado_sala_anfiteatro = mysqli_query($conn, $result_sala_anfiteatro);
			while($row_sala_anfiteatro = mysqli_fetch_assoc($resultado_sala_anfiteatro)){
				//if($dia_da_semana == '1'){
				echo "ID: " . $row_sala_anfiteatro['id'] . "<br>";
				echo "Disciplina: " . $row_sala_anfiteatro['disciplina'] . "<br>";
				echo "Codigo: " . $row_sala_anfiteatro['codigo'] . "<br>";
				echo "Periodo: " . $row_sala_anfiteatro['periodo'] . "<br>";
				echo "Dia da Semana: " . $row_sala_anfiteatro['dia_da_semana'] . "<br>";
				echo "Horario Inicio: " . $row_sala_anfiteatro['horario_inicio'] . "<br>";
				echo "Horario Termino: " . $row_sala_anfiteatro['horario_termino'] . "<br>";
				echo "Sala/Anfiteatro: " . $row_sala_anfiteatro['sala_anfiteatro'] . "<br>";
				echo "Quantidade Matriculados: " . $row_sala_anfiteatro['quantidade_matriculados'] . "<br>";
				echo "<a href='edit_sala_anfiteatro.php?id=" . $row_sala_anfiteatro['id'] . "'>Editar</a><br>";
				echo "<a href='proc_apagar_sala_anfiteatro.php?id=" . $row_sala_anfiteatro['id'] . "'>Apagar</a><br><hr>";
			}
		}
		?>
		
		<h4>MENU</h4>
			<ul id="nav">
				<li class="um"><a href="mapa.php">Home</a></li>
				<li><a href="pesquisar.html"> Pesquisa </a></li>
			    <!--<li><a href="form.php">Formulario </a></li>-->
				<li><a href="index.php">Home</a></li>
				<li><a href="cad_sala_anfiteatro.php">Cadastrar</a></li>
		        <li><a href="index.php">Listar</a></li>
	</body>
</html>