<?php
function renderHeader($title, $description, $className = '', $style = '', $children = '')
{
    $defaultStyle = "background-image: url('assets/paginaInicial.jpg'); background-size: cover; background-position: center;";
    $mergedStyle = $style ?: $defaultStyle;
?>

<div class="header-wrapper">
    <header class="header-container kenburns-top <?php echo $className; ?>" style="<?php echo $mergedStyle; ?>">
        <div class="overlay"></div>
        <div class="content">
            <h1 class="title" style="font-size: 2.3em;">
                <?php echo htmlspecialchars($title); ?>
            </h1>
            <p class="description">
                <?php echo htmlspecialchars($description); ?>
            </p>
        </div>
        <?php if (!empty($children)): ?>
        <div class="children-content"><?php echo $children; ?></div>
        <?php endif; ?>
    </header>
</div>

<?php
}
?>