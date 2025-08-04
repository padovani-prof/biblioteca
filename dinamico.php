<?php
    function obter_bd(){
        //$bd = new PDO('mysql:host=localhost;dbname=u397599254_biblioteca','u397599254_biblioteca','B1b.c3m4d');
        return new PDO('mysql:host=localhost;dbname=biblioteca','root','');
    }   
    function obter_parametro($nome_parametro, $valor_padrao=""){
        //conectar ao banco de dados
        $bd = obter_bd();
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
    function obter_categorias_time(){
    	$bd = obter_bd();
    	$p = $bd->prepare("SELECT * FROM `categoria_time` WHERE ativo = 'S' order by ordem");
	    $p->execute();
	    $resultados = $p->fetchAll();
	    return $resultados; 
    }
    function obter_equipe_da_categoria($cod_categoria){
        //retorna todos os registros de equipe_time ordenados por ordem
        $bd = obter_bd();
        $p = $bd->prepare("SELECT * FROM `equipe_time` where ativo = 'S' and cod_categoria = :c order by ordem");
        $p->bindParam(":c", $cod_categoria, PDO::PARAM_STR);
	    $p->execute();
	    $resultados = $p->fetchAll();
	    return $resultados;
    }
    function obter_noticia(){
        $bd = obter_bd();
        $p = $bd->prepare("SELECT * FROM `noticia` order by data desc limit 4");
        $p->execute();
	    $resultados = $p->fetchAll();
	    return $resultados;     
    }
    function obter_atividade(){
        $bd = obter_bd();
        $p = $bd->prepare("SELECT * FROM `atividade` order by ordem");
        $p->execute();
	    $resultados = $p->fetchAll();
	    return $resultados;     
    }
    
