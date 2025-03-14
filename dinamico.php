<?php

    function obter_parametro($nome_parametro, $valor_padrao=""){
        //conectar ao banco de dados
        $bd = new PDO('mysql:host=localhost;dbname=u397599254_biblioteca','u397599254_biblioteca','B1b.c3m4d');
        $p = $bd->prepare("SELECT * FROM parametro WHERE identificador = :id");
        $p->bindParam(":id", $nome_parametro, PDO::PARAM_STR);
        
		$p->execute();
		$resultados = $p->fetchAll();
		if (count($resultados) == 0){
		    return $valor_padrao;
		}
		return $resultados[0]['descricao'];
        //buscar o parâmetro no banco de dados
        //return "Teste";
    }