<?php 
error_reporting(E_ALL); // Reporta todos os erros e avisos
ini_set('display_errors', 1); // Exibe os erros na tela
include_once 'dinamico.php' ?>
<!DOCTYPE html>
<html lang="pt-br">

<?php include 'head.php'; ?>

<body>
    <?php 
    include 'navbar.php';
    include 'header.php';

    
    
    $content = [
        'title' => obter_parametro('team_banner_titulo'),
        'description' => obter_parametro('team_banner_descricao'),
    ];

 /*...........................................................................
    $teamDescription = [
        'heading' => 'Nossa equipe',
        'subheading' => 'Diretoria',
    ];
    $teamMembers = [
        [
            'name' =>  'Eveli Rayane da Silva Ramos',
            'role' => 'Diretora',
            'imageUrl' => 'https://picsum.photos/400?random=1',
        ],
        [
            'name' => 'Kainny',
            'role' => 'Coordenadora',
            'imageUrl' => 'https://picsum.photos/400?random=2',
        ],
        [
            'name' => 'Dani',
            'role' => 'Educadora',
            'imageUrl' => 'https://picsum.photos/400?random=3',
        ],
        [
            'name' => 'Cícero',
            'role' => 'Monitor',
            'imageUrl' => 'https://picsum.photos/400?random=4',
        ],
        [
            'name' => 'Ana Clara',
            'role' => 'Secretária',
            'imageUrl' => 'https://picsum.photos/400?random=5',
        ],
        [
            'name' => 'Bruno Ferreira',
            'role' => 'Instrutor',
            'imageUrl' => 'https://picsum.photos/400?random=6',
        ],
        [
            'name' => 'Fernanda Souza',
            'role' => 'Gestora de Projetos',
            'imageUrl' => 'https://picsum.photos/400?random=7',
        ],
        [
            'name' => 'Lucas Oliveira',
            'role' => 'Desenvolvedor',
            'imageUrl' => 'https://picsum.photos/400?random=8',
        ],
    ];
 ...........................................................................*/
    
    renderHeader(
        $content['title'],
        $content['description'],
        "",
        "background-image: url('assets/foto01.jpg');"
    );
 /*...........................................................................
 $categorias= obter_categorias_time();    //1
    //print_r($categorias);
    foreach ($categorias as $cat){          //2
        echo $cat["nome"]."<br>";   	     //3
        $equipe = obter_equipe_da_categoria($cat["id"]);//4
        foreach ($equipe as $pessoa){      //5
            echo $pessoa["nome"]."<br>";  //6
        }
    }
 ...........................................................................*/
    ?>
    
    <main class="main-content">
    <!--...........................................................................
    h2><?= $teamDescription['heading']; ?></h2
...........................................................................-->
        <!-- colocar codigo aqui -->
        <section class="team-section"> <!-- cada categoria começa aqui -->
        <?php
        $categorias= obter_categorias_time();  //1
        foreach ($categorias as $cat){ //2
        ?>        
		
			<div class="team-intro">
				<p><?= $cat["nome"]."<br>";?></p>      
			</div>
			<div class="team-container">
				<?php
				$equipe = obter_equipe_da_categoria($cat["id"]); //4
				foreach ($equipe as $pessoa){ //5
				?>              
				<div class="team-member-card"> <!-- cada pessoa começa aqui -->
					<div class="image-container">
						<img src='<?= $pessoa["foto"] ?>'/>
					</div>
					<div class="text-container">
						<h3><?= $pessoa["nome"]."<br>";?></h3>
						<p class="role"><?= $pessoa["cargo"]."<br>";?></p>
					</div>
				</div> <!-- cada pessoa termina aqui -->
			<?php } ?>
			</div>         
		<?php } ?>
		</section> <!-- cada categoria termina aqui -->
        
        <!--...........................................................................
        section class="team-section">
            <div class="team-intro">
                <p>Voluntários e bolsistas</p>
            </div>

            <div class="team-container">
                <div class="team-member-card">
                    <div class="image-container">
                        <img src="assets/katiani.png" alt="Katiani Antunes">
                    </div>
                    <div class="text-container">
                        <h3>Katiani Antunes</h3>
                        <p class="role">Coordenadora Geral</p>
                    </div>
                </div>

                <?php foreach ($teamMembers as $member): ?>
                <div class="team-member-card">
                    <div class="image-container">
                        <img src="<?php echo $member['imageUrl']; ?>" alt="<?php echo $member['name']; ?>">
                    </div>
                    <div class="text-container">
                        <h3><?php echo $member['name']; ?></h3>
                        <p class="role"><?php echo $member['role']; ?></p>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        
        </section
...........................................................................-->
    </main>

    <?php include 'footer.php'; ?>
</body>

</html>


