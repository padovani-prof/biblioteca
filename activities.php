<?php
error_reporting(E_ALL); // Reporta todos os erros e avisos
ini_set('display_errors', 1); // Exibe os erros na tela
include_once 'dinamico.php';
?>

<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php include 'navbar.php'; ?>
    <?php include 'header.php'; ?>

    <?php
    $content = [
        //'title' => 'Nossas Atividades',
        //'description' => 'Explore as atividades realizadas pela Biblioteca Comunitária Maria Dolores.',
        'title' => obter_parametro('activities_banner_titulo'),
        'description' => obter_parametro('activities_banner_descricao'),
    ];
//    $activities = [
//        
//        [
//           'title' => 'Atividade de Leitura',
//           'description' => 'Encontro semanal de leitura com as crianças.',
//            'images' => [
//                'https://picsum.photos/300?random=10',
//                'https://picsum.photos/300?random=11',
//                'https://picsum.photos/300?random=12',
//           ],
//        ]
//        
//        ,
//        
//        [
//            'title' => 'Oficina de Artes',
//            'description' => 'Workshop de artes para jovens.',
//            'images' => [
//                'https://picsum.photos/300?random=13',
//                'https://picsum.photos/300?random=14',
//                'https://picsum.photos/300?random=15',
//            ],
//        ],
//        [
 //           'title' => 'Sustentabilidade',
   //         'description' => 'Discussão sobre sustentabilidade e práticas.',
     //       'images' => [
       //         'https://picsum.photos/300?random=16',
         //       'https://picsum.photos/300?random=17',
           //     'https://picsum.photos/300?random=18',
//            ],
//        ]
//    ];
    renderHeader(
        $content['title'],
        $content['description'],
        "",
        "background-image: url('assets/foto03.jpg');" 
    );
    ?>
<!--...........................................................................
<?php
 	$atividade = obter_atividade();    //1
    //print_r($atividade);
    foreach ($atividade as $atv){  
    	echo $atv["titulo"]."<br>";         //2
        echo $atv["subtitulo"]."<br>";
        echo $atv["foto_miniatura1"]."<br>";  
        echo $atv["foto_miniatura2"]."<br>";
        echo $atv["foto_miniatura3"]."<br><br>";        
}?>
...........................................................................-->

    <main class="main-content">
        <section class="activities-section">
            <div class="activities-container">
<?php
			$atividade = obter_atividade();  //1
			foreach ($atividade as $atv){ //2
?>
			
                <?php //foreach ($activities as $index => $activity): ?>
                
                <div class="activity-card" onclick='location.href = "atividade.php?id=<?= $atv["id"] ?>";'>
                
                

                    <h3><?= $atv["titulo"]."<br>";?></h3>
                    <p><?= $atv["texto"]."<br>";?></p>
                    <div class="activity-images" id="dropdown-<?php //echo $index; ?>" style="display: block;">
<!--...........................................................................
                    <center>
                        <?php //foreach ($activity['images'] as $image): ?>
                        <img src="<?php //echo $image; ?>" alt="<?php //echo $activity['title']; ?>" />
                        <?php //endforeach; ?>
                    </center>
...........................................................................-->
                    <center>
                        <img src='<?= $atv["foto_miniatura1"]."<br>";?>' />
                        <img src='<?= $atv["foto_miniatura2"]."<br>";?>' />
                        <img src='<?= $atv["foto_miniatura3"]."<br>";?>' />       
                    </center>
                    </div>
                   
                </div>
                
                <?php //endforeach; ?>
            <?php } ?>
            </div>
            <p>
        
    </p>

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
