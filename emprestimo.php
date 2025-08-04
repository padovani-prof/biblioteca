<?php include_once 'dinamico.php' ?>
<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        'title' => obter_parametro('emprestimo_banner_titulo'),
        'description' => obter_parametro('emprestimo_banner_descricao'),
    ];
    renderHeader(
        $content['title'],
        $content['description'],
        "",
        "background-image: url('assets/foto01.jpg');"
    );
    ?>
    <section class="emprestimo-section">
        <h2><?= obter_parametro('emprestimo_info_titulo') ?></h2>
        <p><?= obter_parametro('emprestimo_info_desc') ?></p>
        <div class="emprestimo-details">
            <p>
            <strong><?= obter_parametro('emprestimo_info_tihorario') ?></strong>
            <?= obter_parametro('emprestimo_info_horario') ?>
            </p>
            <p>
            <strong><?= obter_parametro('emprestimo_info_tirequisito') ?></strong>
            <?= obter_parametro('emprestimo_info_requisito') ?>
            </p>
            <p>
            <strong><?= obter_parametro('emprestimo_info_ticontato') ?></strong>
            <?= obter_parametro('emprestimo_info_contato') ?>
            </p>    
        </div>  
        <p class="important-note">
        <?= obter_parametro('emprestimo_info_comunicado')?>
        </p>
        <center><a href="https://obrasocialchicoxavier.com.br/"
                     class="learn-more-link" target="_blank">Consulte nosso acervo</a></center>
    </section>
    </main>
    <?php include 'footer.php'; ?>
</body>

</html>
