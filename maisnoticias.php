<?php
error_reporting(E_ALL); // Reporta todos os erros e avisos
ini_set('display_errors', 1); // Exibe os erros na tela
include_once 'dinamico.php';
?>
<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

		<body>
			<?php include 'navbar.php'; ?>
			<?php include 'header.php'; ?>
			<?php
			renderHeader(
				obter_parametro('index_banner_titulo'),
				obter_parametro('index_banner_descricao'),
				"", );
			?>    
		</body>

</html>
