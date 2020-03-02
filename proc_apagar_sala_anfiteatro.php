<?php
session_start();
include_once("conexao.php");
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
if(!empty($id)){
	$result_sala_anfiteatro = "DELETE FROM mapa2020 WHERE id='$id'";
	$resultado_sala_anfiteatro = mysqli_query($conn, $result_sala_anfiteatro);
	if(mysqli_affected_rows($conn)){
		$_SESSION['msg'] = "<p style='color:green;'>Sala ou anfiteatro apagados com sucesso</p>";
		header("Location: index.php");
	}else{
		
		$_SESSION['msg'] = "<p style='color:red;'>Erro a sala ou anfiteatro não foram apagados com sucesso</p>";
		header("Location: index.php");
	}
}else{	
	$_SESSION['msg'] = "<p style='color:red;'>Necessário selecionar uma sala ou anfiteatro</p>";
	header("Location: index.php");
}
