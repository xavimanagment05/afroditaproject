<?php get_header(); ?>

    <main class="pagina seccion no-sidebar contenedor">
        <ul class="listado-blog">
            <?php get_template_part('template-parts/loop', 'blog'); ?>
        </ul>
    </main>

<?php get_footer(); ?>