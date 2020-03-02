<?php
session_start();
include_once("conexao.php");

$nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);



$result_sala_anfiteatro = "INSERT INTO mapa2020 (disciplina, codigo, periodo, dia da semana, horario inicio, horario termino, sala/anfiteatro, quantidade de matriculados created) VALUES ('$nome', '$email', NOW())";
$resultado_sala_anfiteatro = mysqli_query($conn, $result_sala_anfiteatro);

if(mysqli_insert_id($conn)){
	$_SESSION['msg'] = "<p style='color:green;'>Sala ou anfiteatro cadastrado com sucesso</p>";
	header("Location: index.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Sala ou anfiteatro não foram cadastrados com sucesso</p>";
	header("Location: cad_sala_anfiteatro.php");
}