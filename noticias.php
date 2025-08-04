<section class="noticias-section" >
    <!--div style="display: block;"-->
    <h2><?= obter_parametro('index_noticias_titulo') ?></h2>
    
    <div class="noticias-content">

<?php 
 	$noticia = obter_noticia();
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

    <div>
        <center><a href=''>Mais notícias</a></center>
    </div>
</section>
