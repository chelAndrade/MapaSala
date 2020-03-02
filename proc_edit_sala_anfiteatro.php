<?php
session_start();
include_once("conexao.php");

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
$disciplina = filter_input(INPUT_POST, 'disciplina', FILTER_SANITIZE_STRING);
$codigo = filter_input(INPUT_POST, 'codigo', FILTER_SANITIZE_STRING);
$periodo = filter_input(INPUT_POST, 'periodo', FILTER_SANITIZE_STRING);
$dia_da_semana  = filter_input(INPUT_POST, 'dia_da_semana', FILTER_SANITIZE_STRING);
$horario_inicio = filter_input(INPUT_POST, 'horario_inicio', FILTER_SANITIZE_NUMBER_INT);
$horario_termino = filter_input(INPUT_POST, 'horario_termino', FILTER_SANITIZE_NUMBER_INT);
$sala_anfiteatro = filter_input(INPUT_POST, 'sala_anfiteatro', FILTER_SANITIZE_STRING);
$quantidade_matriculados = filter_input(INPUT_POST, 'quantidade_matriculados', FILTER_SANITIZE_STRING);



$result_sala_anfiteatro = "UPDATE mapa2020 SET disciplina='$disciplina', codigo='$codigo',periodo='$periodo', 
				dia_da_semana='$dia_da_semana',horario_inicio='$horario_inicio', horario_termino='$horario_termino',
				sala_anfiteatro='$sala_anfiteatro', quantidade_matriculados='$quantidade_matriculados',modified=NOW() WHERE id='$id'";
$resultado_sala_anfiteatro = mysqli_query($conn, $result_sala_anfiteatro);

if(mysqli_affected_rows($conn)){
	$_SESSION['msg'] = "<p style='color:green;'>Sala ou Anfiteatro editados com sucesso</p>";
	header("Location: index.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Sala ou Anfiteatro não foram editados com sucesso</p>";
	header("Location: edit_sala_anfiteatro.php?id=$id");
}
