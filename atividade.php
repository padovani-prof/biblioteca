<?php
error_reporting(E_ALL); // Reporta todos os erros e avisos
ini_set('display_errors', 1); // Exibe os erros na tela
include_once 'dinamico.php';
      //$atividade = obter_atividade();
      //foreach ($atividade as $atv){

//}
?>
<!DOCTYPE html>
<html lang="pt-br">
   <?php include 'head.php'; ?>
   <body>
      <?php include 'navbar.php'; ?>
      <?php include 'header.php'; ?>
      <?php
$atividade = obter_atividade();
foreach ($atividade as $atvdade){
	//if(isset($_POST["id"])){
		
		if ($atvdade["id"] == $_GET["id"]){
			$atv = $atvdade;
		}
	}

         $content = [
             'title' => $atv["titulo"],
             'description' => $atv["subtitulo"],
         ];
         //ja tem no banco associar titulo, subtitulo, fotoprincipal
         renderHeader(
             $content['title'], 
             $content['description'],
             "", 
             "background-image: url('".$atv["foto_principal"]."');"
         );

         ?>
      <main class="main-content">
      <!-- a foto de fundo deve ser a coluna foto_principal da tabela atividade -->
         <div class="about-content">
            <section class="about-maria-dolores" >
               
               <div class="text-content">
                  <!--h2>Quem foi Maria Dolores?</h2-->
                  <h2 style="margin-top: 0px"><?= obter_parametro('atividade_info_descricao')?></h2>
                  <p style="text-align: justify"><?= $atv["descricao"]."<br>";?></p>                  
                  <h2 style="margin-top: 0px"><?= obter_parametro('atividade_info_dias')?></h2>
                  <p><?= $atv["dias_funcionamento"];?></p>                     
                  
                                    <h2 style="margin-top: 0px"><?= obter_parametro('atividade_info_horario')?></h2>
                  <p><?= $atv["horarios"];?></p>                     
                  
            </div>
               </div>
               <!--img src="assets/biblioteca.JPG" alt="Maria Dolores" class="about-image" style="margin-left:20px"-->
            
            </section>
            
            
         </div>











         <section class="noticias-section" style="background-color: transparent;">
    <!--div style="display: block;">
    <h2><?= obter_parametro('index_noticias_titulo') ?></h2>
    </div-->
			<div class="noticias-content">
			
				<!--div class="noticia-item">
				    <div class="image-container">
						<img src="assets/autora1.png" width="100%">
					</div>
				    <div class="noticia-card">
				        <h3>Novo projeto de leitura</h3>
				        <p class="data">10 de Novembro de 2024</p>
				        <p class="descricao">Estamos lançando um novo projeto de incentivo à leitura para crianças e jovens.</p>
				    </div>
				</div-->
				
		 <?php 
		 	/*$noticia = obter_noticia();    //1
			//print_r($noticia);
			foreach ($noticia as $ntc){  
				echo $ntc["foto_miniatura"]."<br>";         //2
				echo $ntc["titulo_breve"]."<br>";
				echo $ntc["data"]."<br>";  
				echo $ntc["titulo_real"]."<br><br>";
			 }
		*/?>

		<?php 
		 	$noticia = obter_noticia();    //1
			//print_r($noticia);
			foreach ($noticia as $ntc){
		?>
				<div class="noticia-item">
					<div class="image-container">
						<img src='<?= $ntc["foto_miniatura"] ?>' width="100%">
					</div>
				    <div class="noticia-card">
				        <center>
                <h3><?= $ntc["titulo_breve"]?></h3>
                <p class="data"><?= $ntc["data"]?></p>
                <p class="descricao"><?= $ntc["titulo_real"]?></p>
                </center>
				        
				    </div>
				</div>
		<?php } ?>        
			</div>

        <!--div class="noticia-item">
            <div class="noticia-card">
                <h3>Evento comunitário</h3>
                <p class="data">5 de Novembro de 2024</p>
                <p class="descricao">Convidamos todos para participar do evento comunitário na biblioteca.</p>
            </div>
        </div>
        <div class="noticia-item">
            <div class="noticia-card">
                <h3>Evento comunitário</h3>
                <p class="data">5 de Novembro de 2024</p>
                <p class="descricao">Convidamos todos para participar do evento comunitário na biblioteca.</p>
            </div>
        </div>

        <div class="noticia-item">
            <div class="noticia-card">
                <h3>Evento comunitário</h3>
                <p class="data">5 de Novembro de 2024</p>
                <p class="descricao">Convidamos todos para participar do evento comunitário na biblioteca.</p>
            </div>
        </div>
        <div class="noticia-item">
            <div class="noticia-card">
                <h3>Evento comunitário</h3>
                <p class="data">5 de Novembro de 2024</p>
                <p class="descricao">Convidamos todos para participar do evento comunitário na biblioteca.</p>
            </div>
        </div-->
			<div>
				<center><a href='activities.php'>Outras atividades</a></center>
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
