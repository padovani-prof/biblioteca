<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navegação e Modal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/nav.css">
</head>

<body>
    <nav class="navbar" id="navbar">
        <div class="container">
            <a href="index.php" class="logo">
                <img src="assets/logo.png" alt="Logo Biblioteca Maria Dolores" width="80">
            </a>
            <button class="mobile-menu-button" onclick="toggleMobileMenu()">
                <i class="fas fa-bars"></i>
            </button>
            <div class="menu" id="menu">
                <a href="index.php" class="menu-item">INÍCIO</a>
                <a href="team.php" class="menu-item">NOSSO TIME</a>
                <a href="how_it_started.php" class="menu-item">COMO TUDO COMEÇOU</a>
                <a href="doacao.php" class="menu-item">DOE AGORA</a>
                <a href="activities.php" class="menu-item">ATIVIDADES</a>
                <a href="emprestimo.php" class="menu-item">EMPRÉSTIMOS</a>
            </div>
        </div>
    </nav>

    <script>
    function toggleMobileMenu() {
        const menu = document.getElementById('menu');
        menu.classList.toggle('open');
    }

    window.addEventListener("scroll", () => {
        const navbar = document.getElementById("navbar");
        if (window.scrollY > 50) {
            navbar.classList.add("scrolled");
        } else {
            navbar.classList.remove("scrolled");
        }
    });
    </script>
</body>

</html>