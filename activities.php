<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        'title' => 'Nossas Atividades',
        'description' => 'Explore as atividades realizadas pela Biblioteca Comunitária Maria Dolores.',
    ];
    $activities = [
        [
            'title' => 'Atividade de Leitura',
            'description' => 'Encontro semanal de leitura com as crianças.',
            'images' => [
                'https://picsum.photos/300?random=10',
                'https://picsum.photos/300?random=11',
                'https://picsum.photos/300?random=12',
            ],
        ],
        [
            'title' => 'Oficina de Artes',
            'description' => 'Workshop de artes para jovens.',
            'images' => [
                'https://picsum.photos/300?random=13',
                'https://picsum.photos/300?random=14',
                'https://picsum.photos/300?random=15',
            ],
        ],
        [
            'title' => 'Sustentabilidade',
            'description' => 'Discussão sobre sustentabilidade e práticas.',
            'images' => [
                'https://picsum.photos/300?random=16',
                'https://picsum.photos/300?random=17',
                'https://picsum.photos/300?random=18',
            ],
        ],
    ];
    renderHeader(
        $content['title'],
        $content['description'],
        "",
        "background-image: url('assets/foto03.jpg');" 
    );
    ?>

    <main class="main-content">
        <section class="activities-section">
            <div class="activities-container">
                <?php foreach ($activities as $index => $activity): ?>
                <div class="activity-card" onclick="toggleDropdown(<?php echo $index; ?>)">
                    <h3><?php echo $activity['title']; ?></h3>
                    <p><?php echo $activity['description']; ?></p>
                    <div class="activity-images" id="dropdown-<?php echo $index; ?>" style="display: block;">
                        <?php foreach ($activity['images'] as $image): ?>
                        <img src="<?php echo $image; ?>" alt="<?php echo $activity['title']; ?>" />
                        <?php endforeach; ?>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </section>
    </main>

    <?php include 'footer.php'; ?>

    <!--script>
    function toggleDropdown(index) {
        const dropdown = document.getElementById(`dropdown-${index}`);
        dropdown.style.display = dropdown.style.display === "none" ? "block" : "none";
    }
    </script-->
</body>

</html>