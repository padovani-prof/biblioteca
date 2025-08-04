<?php include_once 'dinamico.php' ?>
<!DOCTYPE html>
<html lang="pt-br">
   <?php include 'head.php'; ?>
   <body>
      <?php include 'navbar.php'; ?>
      <?php include 'header.php'; ?>
      <?php
         $content = [
             'title' => obter_parametro('started_banner_titulo'),
             'description' => obter_parametro('started_banner_descricao'),
         ];
         
         renderHeader(
             $content['title'], 
             $content['description'],
             "", 
             "background-image: url('assets/foto02.jpg');" 
         );
         ?>
      <main class="main-content">
         <center><img style="width:100%" src="assets/arte-biblio.jpeg"/></center>
         <div class="about-content">
            <section class="about-maria-dolores" >
               
               <div class="text-content">
                  <!--h2>Quem foi Maria Dolores?</h2-->
                  <h2 style="margin-top: 0px">História da Biblioteca</h2>
                  <!--p>Mentora espiritual do Centro Espírita Maria Dolores, escritora e poetisa que lutou pela causa das
                     mulheres e meninas órfãs.</p-->                    
                  
                  <p style="text-align: justify">A Biblioteca Maria Dolores começou com o projeto de extensão <a target="_blank" href="http://bit.ly/praticas-leitoras." class="learn-more-link">Práticas Leitoras</a>. Na primeira edição, em 2019, o projeto foi desenvolvido em rede, coordenado pelas professoras <a href="team.php" title="Ver seção de fundadoras">Elisângela Silva de Oliveira</a>, em Itacoatiara, e <a href="team.php" title="Ver seção de fundadoras">Fátima Souza</a>, em Presidente Figueiredo.</p>
                  <p style="text-align: justify">A partir de formações, rodas de leitura, encontros comunitários e ações de mobilização cultural promovidas pelas redes Cachoeiras de Letras, Amazônia Literária e a Rede Nacional de Bibliotecas Comunitárias (RNBC), foi possível estimular o protagonismo local e fortalecer vínculos entre leitores, mediadores e territórios. Essas práticas incentivaram o compartilhamento de saberes, o reconhecimento da leitura como direito e a valorização das bibliotecas como espaços vivos de convivência.</p>
                  <p style="text-align: justify">Deste movimento nasceu a Biblioteca Comunitária Maria Dolores (BCMD), quando, em janeiro de 2021, a professora <a href="team.php" title="Ver seção de fundadoras">Sebastiana
Nunes da Silva</a> conheceu a Biblioteca Comunitária Paulo Freire que
se situa na área rural de Presidente Figueiredo (Comunidade Cristo
Rei, Km 28 da Estrada Presidente Figueiredo-Balbina).</p>
				  <p style="text-align: justify"> Encantada com o acervo e a dinâmica das atividades que a professora Elzimar
dos Santos Ferreira desenvolve há 20 anos no local, Profa. Sebastiana, junto
da Profa. Elisangela, da Profa. <a href="team.php" title="Ver seção de fundadoras">Ethel Silva de Oliveira</a> e
voluntários da comunidade, formaram um grupo de ação para a implantação da
BCMD, a ser mantida pelo Centro Espírita Maria Dolores.</p>
                  <a href="https://feamazonas.org.br/noticias-das-casas/conheca-historia-do-centro-espirita-maria-dolores/"
                     class="learn-more-link" target="_blank">
                     <!--Conheça a história do Centro Espírita Maria Dolores--> <?= obter_parametro('started_maria_nomelink') ?> 
                  </a>
                  <div class="text-content" >
		         <center><img src="assets/biblioteca.jpg" alt="Maria Dolores" style="width:60%;margin-top:20px;border-radius: 10px"></center>
            </div>
               </div>
               <!--img src="assets/biblioteca.JPG" alt="Maria Dolores" class="about-image" style="margin-left:20px"-->
            
            </section>
            
         </div>

         <div class="about-content">
            <section class="about-maria-dolores" >
               <img src="assets/maria_dolores.jpg" alt="Maria Dolores" class="about-image" style="margin-right:20px">
               <div class="text-content">
                  <!--h2>Quem foi Maria Dolores?</h2-->
                  <h2 style="margin-top: 0px"><?= obter_parametro('started_maria_titulo') ?></h2>
                  <!--p>Mentora espiritual do Centro Espírita Maria Dolores, escritora e poetisa que lutou pela causa das
                     mulheres e meninas órfãs.</p-->                    
                  <p style="text-align: justify"><?= obter_parametro('started_maria_descricao')?> Maria de Carvalho Leite, a conhecida Maria Dolores no Espiritismo, renasceu em Bonfim da feira - Bahia, em 10 de setembro de 1901 e desencarnou, vitimada por pneumonia, em 27 de julho de 1958. Diplomou-se professora em 1916 e lecionou no Educandário dos Perdões e no Ginásio Carneiro Ribeiro, ambos em Salvador - Bahia. Dedicou-se à Arte Poética e foi redatora chefe por 13 anos, da página feminina do jornal O imparcial. 
                  A finalidade de sua produção poética sempre foi contribuir para sublimação dos sentimentos humanos e para a exaltação do bem sob a proteção de Jesus. </p>
                  <!--p>Saiba mais, acesse o link abaixo:</p-->
                  

               </div>
            </section>
         </div>
         
         <section class="logo-meaning">
            <!--h2>Conheça o significado dos elementos da logomarca da biblioteca.</h2-->
            <h2><?= obter_parametro('started_logomarca_titulo') ?></h2>
            <div class="logo-carousel-container">
               <div class="carousel">
                  <div class="carousel-item">
                     <img src="assets/logo.png" alt="Significado da Logomarca - Imagem 1">
                  </div>
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
