<?php get_header(); ?>

    <main class="pagina seccion no-sidebars contenedor">
    
    <?php 
        $autor = get_queried_object();
    ?>
        
        <h2 class="text-center texto-primario">Autor: <?php echo $autor->data->display_name; ?></h2>

        <ul class="listado-blog">
            <?php get_template_part('template-parts/loop', 'blog'); ?>
        </ul>
    </main>

<?php get_footer(); ?>