<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        'title' => 'Como Tudo Começou',
        'description' => 'Descubra a história e os serviços da Biblioteca Comunitária Maria Dolores.',
    ];
    renderHeader(
        $content['title'], 
        $content['description'],
        "", 
        "background-image: url('assets/foto02.jpg');" 
    );
    ?>

    <main class="main-content">
        <section class="about-maria-dolores">
            <div class="about-content">
                <img src="assets/maria_dolores.jpg" alt="Maria Dolores" class="about-image">
                <div class="text-content">
                    <h2>Quem foi Maria Dolores?</h2>
                    <p>Mentora espiritual do Centro Espírita Maria Dolores, escritora e poetisa que lutou pela causa das
                        mulheres e meninas órfãs.</p>
                    <p>Saiba mais, acesse o link abaixo:</p>
                    <a href="https://feamazonas.org.br/noticias-das-casas/conheca-historia-do-centro-espirita-maria-dolores/"
                        class="learn-more-link" target="_blank">Conheça a história do Centro Espírita Maria Dolores</a>
                </div>
            </div>
        </section>
        <section class="logo-meaning">
            <h2>Conheça o significado dos elementos da logomarca da biblioteca.</h2>
            <div class="logo-carousel-container">
                <div class="carousel">
                    <div class="carousel-item">
                        <img src="assets/logo01.jpg" alt="Significado da Logomarca - Imagem 1">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/logo02.jpeg" alt="Significado da Logomarca - Imagem 2">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/logo03.jpg" alt="Significado da Logomarca - Imagem 3">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/logo04.jpeg" alt="Significado da Logomarca - Imagem 3">
                    </div>
                </div>
                <button class="carousel-button prev">&#10094;</button>
                <button class="carousel-button next">&#10095;</button>
            </div>
        </section>
    </main>

    <?php include 'footer.php'; ?>
</body>
<script>
document.addEventListener('DOMContentLoaded', function() {
    const carousel = document.querySelector('.carousel');
    const items = document.querySelectorAll('.carousel-item');
    const prevButton = document.querySelector('.carousel-button.prev');
    const nextButton = document.querySelector('.carousel-button.next');
    let currentIndex = 0;

    function showSlide(index) {
        if (index >= items.length) {
            currentIndex = 0;
        } else if (index < 0) {
            currentIndex = items.length - 1;
        } else {
            currentIndex = index;
        }
        carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    prevButton.addEventListener('click', () => showSlide(currentIndex - 1));
    nextButton.addEventListener('click', () => showSlide(currentIndex + 1));
});
</script>

</html>