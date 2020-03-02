<?php
session_start();
include_once("conexao.php");
?>

<!DOCTYPE HTML>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Mapa de Sala ICB</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<p>&nbsp;</p>

<?php
	
	if(isset($_SESSION['msg'])){
		echo $_SESSION['msg'];
		unset($_SESSION['msg']);
	}

    $pagina_atual = filter_input(INPUT_GET,'pagina', FILTER_SANITIZE_NUMBER_INT);
	$pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
	
	$qnt_result_pg = 1;
	
	$inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;
	
	$result_salas_anfiteatros = "SELECT * FROM mapa2020 LIMIT $inicio, $qnt_result_pg";
	$resultado_salas_anfiteatros = mysqli_query($conn, $result_salas_anfiteatros);
	while($row_sala_anfiteatro = mysqli_fetch_assoc($resultado_salas_anfiteatros)){
		echo "ID: " . $row_sala_anfiteatro['id']. "<br>";
		echo "Disciplina: " . $row_sala_anfiteatro['disciplina']. "<br>";
		echo "Codigo: " . $row_sala_anfiteatro['codigo']. "<br>";
		echo "Periodo: " . $row_sala_anfiteatro['periodo']. "<br>";
		echo "Dia da Semana: " . $row_sala_anfiteatro['dia da semana']. "<br>";
		echo "Horario Inicio: " . $row_sala_anfiteatro['horario inicio']. "<br>";
		echo "Horario Termino: " . $row_sala_anfiteatro['horario termino']. "<br>";
		echo "Sala/Anfiteatro: " . $row_sala_anfiteatro['sala/anfiteatro']. "<br>";
		echo "Quantidade de Matriculados: " . $row_sala_anfiteatro['sala/anfiteatro']. "<br>";
		echo "<a href='edit_sala_anfiteatro.php?id=" . $row_sala_anfiteatro['id']. "'>Editar</a><br>";
		echo "<a href='proc_apagar_sala_anfiteatro.php?id=" . $row_sala_anfiteatro['id'] ."'>Apagar</a><br><hr>";
	}
    
	mysqli_free_result($resultado_sala_anfiteatro);
	
    $result_pg = "SELECT COUNT(id) AS num_result FROM mapa2020";
    $resultado_pg = mysqli_query($conn, $result_pg);
    $row_pg = mysqli_fetch_assoc($resultado_pg);

	$quantidade_pg = ceil($row_pg['num_result'] / $qnt_result_pg);
	
	
	$max_links = 2;
	echo "<a href='index.php?pagina=1'>Primeira</a>";
	
	for($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++){
		if($pag_ant >= 1){
			echo "<a href='index.php?pagina=$pag_ant'>$pag_ant</a>";
		}
	}

     echo "$pagina ";

    for($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++){
		if($pag_dep <= $quantidade_pg){
			echo"<a href='index.php?pagina=$pag_dep'>$pag_dep</a>";
		}
	}

    echo "<a href='index.php?pagina=$quantidade_pg'>Ultima</a>";
?>


<h4>MENU</h4>
			<ul id="nav">
				<li class="um"><a href="mapa.php">Home</a></li>
				<li><a href="pesquisar.html"> Pesquisa </a></li>
			    <!--<li><a href="form.php">Formulario </a></li>-->
				<li><a href="index.php">Listagem</a></li>

</body>
</html>
 	