<?php

error_reporting(E_ALL); // Reporta todos os erros e avisos
ini_set('display_errors', 1); // Exibe os erros na tela
include 'dinamico.php';
echo obter_parametro('index_titulo_nomesite');
?>

