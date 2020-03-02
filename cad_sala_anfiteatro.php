<?php
session_start();
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
		<title>Cadastrar</title>		
	</head>
	<body>
		<!--<a href="cad_sala_anfiteatro.php">Cadastrar</a><br>
		<a href="index.php">Listar</a><br>-->
		<h1>Cadastrar Sala/Anfiteatro </h1>
		<?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
		<form method="POST" action="proc_cad_sala_anfiteatro.php">
			<label>Disciplina: </label>
			<input type="text" name="disciplina" placeholder="Digite o nome da disciplina" value="<?php echo $row_sala_anfiteatro['disciplina']; ?>"><br><br>
			
			<label>Codigo: </label>
			<input type="text" name="codigo" placeholder="Digite o codigo da disciplina" value="<?php echo $row_sala_anfiteatro['codigo']; ?>"><br><br>
			
			<label>Periodo: </label>
			<input type="text" name="periodo" placeholder="Informe o periodo" value="<?php echo $row_sala_anfiteatro['periodo']; ?>"><br><br>
			
			<label>Dia da semana: </label>
			<input  id="date" type="date" value="<?php echo $row_sala_anfiteatro['dia da semana']; ?>"><br><br>
			
			<label>Horario Inicio: </label>
			<input type="time" min="07:00" max="21:00" required="<?php echo $row_sala_anfiteatro['horario inicio']; ?>"><br><br>
			
			<label>Horario Termino: </label>
			<input type="time" min="07:00" max="21:00" required="<?php echo $row_sala_anfiteatro['horario termino']; ?>"><br><br>
			
			<label>Sala/Anfiteatro: </label>
			<input type="text" name="sala/anfiteatro" placeholder="Informe a sala ou anfiteatro" value="<?php echo $row_sala_anfiteatro['sala/anfiteatro']; ?>"><br><br>
			
			<label>Quantidade de Matriculados: </label>
			<input type="text" name="quantidade matriculados" placeholder="Informe a quantidade de matriculados" value="<?php echo $row_sala_anfiteatro['quantidade de matriculados']; ?>"><br><br>
			
			<input type="submit" value="Cadastrar">
		</form>
		
			<h4>MENU</h4>
			<ul id="nav">
				<li class="um"><a href="mapa.php">Home</a></li>
			    <li><a href="pesquisa-sala-anfiteatro.php">Pesquisa Sala ou Anfiteatro</a></li>
				<li><a href="pesquisar.html"> Pesquisa </a></li>
				<li><a href="form.php"> Formulario </a></li>
				<li><a href="pesquisar.php"> Pesquisa </a></li>
				<li><a href="edit_sala_anfiteatro.php"> Editar </a></li>
	</body>
</html>