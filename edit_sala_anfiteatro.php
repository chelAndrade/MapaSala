<?php
session_start();
include_once("conexao.php");
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$result_sala_anfiteatro = "SELECT * FROM mapa2020 WHERE id = '$id'";
$resultado_sala_anfiteatro = mysqli_query($conn, $result_sala_anfiteatro);
$row_sala_anfiteatro = mysqli_fetch_assoc($resultado_sala_anfiteatro);
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
		<title>Editar</title>		
	</head>
	<body>
		<h1>Editar Sala ou Anfiteatro</h1>
		<?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
		<form method="POST" action="proc_edit_sala_anfiteatro.php">
			<input type="hidden" name="id" value="<?php echo $row_sala_anfiteatro['id']; ?>">
			
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
			
			<input type="submit" value="Editar">
		</form>
		<h4>MENU</h4>
			<ul id="nav">
				<li class="um"><a href="mapa.php">Home</a></li>
			    <li><a href="pesquisa-sala-anfiteatro.php">Pesquisa Sala ou Anfiteatro</a></li>
				<li><a href="pesquisar.html"> Pesquisa </a></li>
				<li><a href="form.php"> Formulario </a></li>
				<li><a href="pesquisar.php"> Pesquisa </a></li>
				<li><a href="cad_sala_anfiteatro.php">Cadastrar</a></li>
				<li><a href="index.php">Listar</a></li>
		
	</body>
</html>