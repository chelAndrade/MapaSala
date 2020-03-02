<!DOCTYPE html>
<html lang="pt-br">

<head>
	<link rel="stylesheet" type="text/css" href="estilos.css">
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <title>Mapa de Sala</title>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<p>&nbsp;</p>
	
		<style type="text/css">
				table alter,th,td{
					border:3px solid black;
					background:#ffc;
				}
		
				th {
					background-color:black;
					color:yellow;
				}
			</style>  
</head>

 <html>
 <head>
 <link href="estilos.css" rel="stylesheet" type="text/css">
 <title>Resultado da pesquisa</title>
 </head>
 <body>
 
 <!-- Criando tabela e cabeçalho de dados: -->
 <table border="1" style='width:50%'>
 <tr>
 <th>Id</th>
 <th>Disciplina</th>
 <th>Codigo</th>
 <th>Periodo</th>
 <th>Dia da Semana</th>
 <th>Horario Inicio</th>
 <th>Horario Termino</th>
 <th>Sala/Anfiteatro</th>
 <th>Quantidade de Matriculados</th>
 </tr>
 
 <!-- Preenchendo a tabela com os dados do banco: -->
 <?php
    $servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "mapa_sala";
	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
 
	$resultado = "SELECT * FROM mapa2020 ";
	$resultado = mysqli_query($conn,$resultado);
 
 // Obtendo os dados por meio de um loop while
 while ($registro = mysqli_fetch_assoc($resultado)){
   /*$id = $registro['Id'];
   $disciplina = $registro['Disciplina'];
   $codigo = $registro['Codigo'];
   $periodo = $registro['Periodo'];
   $dia_da_semana = $registro['Dia da Semana'];
   $horario_inicio = $registro['Horario Inicio'];
   $horario_termino = $registro['Horario Termino'];
   $sala_anfiteatro = $registro['Sala/Anfiteatro'];
   $quantidade_matriculados = $registro['Quantidade Matriculados'];*/
   echo"<table>";
   echo "<tr>";
   echo "<td> Id:".$registro['Id']."</td>";
   echo "<td> Disciplina:".$registro['Disciplina']."</td>";
   echo "<td> Codigo:".$registro['Codigo']."</td>";
   echo "<td> Periodo:".$registro['Periodo']."</td>";
   echo "<td> Dia da Semana:".$registro['Dia da Semana']."</td>";
   echo "<td> Horario Inicio:".$registro['Horario Inicio']."</td>";
   echo "<td> Horario Termino:".$registro['Horario Termino']."</td>";
   echo "<td> Sala/Anfiteatro:".$registro['Sala/Anfiteatro']."</td>";
   echo "<td> Quantidade de Matriculados:".$registro['Quantidade de Matriculados']."</td>";
   echo "</tr>";
   echo "</table>";
 }
 //mysqli_close($strcon);
 //echo "</table>";
?>

<div id="auxiliar">
		
			<h4>MENU</h4>
			<div id="nav">
				<li class="um"><a href="mapa.php">Home</a></li>
				<li><a href="pesquisa-sala-anfiteatro.php">Pesquisa Sala ou Anfiteatro</a></li>
				<li><a href="pesquisar.html">Pesquisa</a></li>
				<!--<a href="logout.php">Logout</a>-->
			</div>

</div> <!-- Fim da div#auxiliar -->
<div class="clear"></div>

	</div> <!-- Fim da div#conteudo -->
	
	<div id="rodape">
	  <p>  ©2020 </p>
	</div>
	
</div> <!-- Fim da div#tudo -->
</body>
</html>