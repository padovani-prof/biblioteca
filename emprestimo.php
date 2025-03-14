<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        'title' => 'Empréstimo de Livros',
        'description' => 'Conheça os procedimentos para empréstimo de livros.',
    ];
    renderHeader(
        $content['title'],
        $content['description'],
        "",
        "background-image: url('assets/foto01.jpg');"
    );
    ?>
    <section class="emprestimo-section">
        <h2>Informações de Empréstimo</h2>
        <p>Se você deseja pegar livros emprestados na Biblioteca Comunitária Maria Dolores, por favor, veja as
            instruções e informações abaixo:</p>
        <div class="emprestimo-details">
            <p><strong>Horário de Funcionamento:</strong> Segunda a Sexta, das 9h às 18h</p>
            <p><strong>Requisitos:</strong> Documento de identificação com foto e comprovante de residência</p>
            <p><strong>Contato:</strong> (92) 98488-2959</p>
        </div>
        <p class="important-note">Aproveite nosso acervo e incentive a leitura!</p>
    </section>



    </main>

    <?php include 'footer.php'; ?>
</body>

</html>