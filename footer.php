<?php
$showModal = isset($_POST['donate']) ? true : false;
include_once 'dinamico.php';
?>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-donation">         
            <h3><?= obter_parametro('index_rodape_tipix')?></h3>
            <p><?= obter_parametro('index_rodape_descpix')?></p>
            
            <!--h3>Deseja Contribuir com um PIX?</h3>
            <p>Aceitamos sua doação! Se você deseja contribuir com as despesas mensais e atividades da Biblioteca
                Comunitária Maria Dolores, segue abaixo os dados bancários para transferência.</p-->
                
            <div class="donation-details">
                <div class="details-text">              
                    <p><strong><?= obter_parametro('index_rodape_tifavorecido')?></strong>
                    <?= obter_parametro('index_rodape_favorecido')?></p>
                    
                    <p><strong><?= obter_parametro('index_rodape_titipochave')?></strong>
                    <?= obter_parametro('index_rodape_tipochave')?></p>
                    <p><strong><?= obter_parametro('index_rodape_tichave')?></strong>
                    <?= obter_parametro('index_rodape_chave')?></p>
                    <p><strong><?= obter_parametro('index_rodape_tiinstituicao')?></strong>
                    <?= obter_parametro('index_rodape_instituicao')?></p>
                    
                    <!--p><strong>Favorecido:</strong> Centro Espírita Maria Dolores</p>
                    <p><strong>Tipo de Chave:</strong> CNPJ</p>
                    <p><strong>Chave PIX:</strong> 63.659.213/0001-40</p>
                    <p><strong>Instituição:</strong> Sicoob Amazônia</p-->
                    
                </div>
                <div class="qr-code">
                    <img src="assets/qrCode.png" alt="QR Code para doação PIX" width="112" height="112">
                </div>
            </div>
        </div>
        <div class="footer-social">
            <h3><?= obter_parametro('index_rodape_tisocial')?></h3>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </div>
</footer>
