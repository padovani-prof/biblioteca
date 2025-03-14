<?php
$showModal = isset($_POST['donate']) ? true : false;
?>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-donation">
            <h3>Deseja Contribuir com um PIX?</h3>
            <p>Aceitamos sua doação! Se você deseja contribuir com as despesas mensais e atividades da Biblioteca
                Comunitária Maria Dolores, segue abaixo os dados bancários para transferência.</p>
            <div class="donation-details">
                <div class="details-text">
                    <p><strong>Favorecido:</strong> Centro Espírita Maria Dolores</p>
                    <p><strong>Tipo de Chave:</strong> CNPJ</p>
                    <p><strong>Chave PIX:</strong> 63.659.213/0001-40</p>
                    <p><strong>Instituição:</strong> Sicoob Amazônia</p>
                </div>
                <div class="qr-code">
                    <img src="assets/qrCode.png" alt="QR Code para doação PIX" width="112" height="112">
                </div>
            </div>
        </div>
        <div class="footer-social">
            <h3>SOCIAL</h3>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </div>
</footer>