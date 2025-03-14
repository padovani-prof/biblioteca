<?php include 'dinamico.php' ?>
<section class="sobre">
    <h3><?= obter_parametro('index_sobre_cabecalho') ?></h3>
    <h2><?= obter_parametro('index_sobre_titulo') ?></h2>
    <p><i><?= obter_parametro('index_sobre_subtitulo') ?></i></p>
    <p><?= obter_parametro('index_sobre_descricao') ?></p>
    <a href="how_it_started.php" class="btn-sobre"><button class="btn-sobre"><?= obter_parametro('index_sobre_botao') ?></button></a>
</section>