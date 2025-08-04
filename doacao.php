<?php include_once 'dinamico.php' ?>
<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        'title' => obter_parametro('doacao_banner_titulo'),
        'description' => obter_parametro('doacao_banner_descricao'),
    ];

    renderHeader(
        $content['title'], 
        $content['description'],
        "",
        "background-image: url('assets/biblioteca.JPG');" 
    );
    ?>

    <main class="main-content">
    <section class="donation-info">
        <h2><?= obter_parametro('doacao_ajudar_titulo') ?></h2>
        <div class="donation-methods-container">
	            <div class="donation-method">
	            	<i class="fa-solid fa-hand-holding-dollar donation-icon"></i>   <i class="fas fa-piggy-bank donation-icon"></i>
	                <h3><?= obter_parametro('doacao_tipoajuda_valor') ?></h3>
	                <p><?= obter_parametro('doacao_descajuda_descvalor') ?></p>
	            </div>
	            <div class="donation-method">
	                <i class="fas fa-box-open donation-icon"></i>    <i class="fa-solid fa-puzzle-piece donation-icon"></i>
	                <h3><?= obter_parametro('doacao_tipoajuda_materiais') ?></h3>
	                <p><?= obter_parametro('doacao_descajuda_descmateriais') ?></p>  
	            </div>
	            <div class="donation-method">
	            	<!--img width="40" height="40" style="color:#335122;" src='assets/icons/solidario.svg'/-->
	                <i class="fa-solid fa-users donation-icon"></i>   <i class="fa-solid fa-hand-point-up donation-icon"></i>
	                <h3><?= obter_parametro('doacao_tipoajuda_voluntariado') ?></h3>
	                <p><?= obter_parametro('doacao_descajuda_descvoluntariado') ?></p>
	            </div>	            <div class="donation-method">
	                <i class="fa-solid fa-handshake donation-icon"></i>   <i class="fa-solid fa-phone donation-icon"></i>
					<h3><?= obter_parametro('doacao_tipoajuda_patrocinios') ?></h3>
	                <p><?= obter_parametro('doacao_descajuda_descpatrocinios') ?></p>
	            </div>
        </div>
    </section>
    </main>

    <?php include 'footer.php'; ?>
</body>

</html>
