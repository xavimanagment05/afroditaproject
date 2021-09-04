<?php get_header('front'); ?>

<section class="bienvenida text-left seccion">
    <h2 class="texto-primario"><?php the_field('encabezado_bienvenida'); ?></h2>
    <p><?php the_field('texto_bienvenida'); ?></p>
</section>

<div class="seccion-areas">
    <ul class="contenedor-areas">
        <li class="area">
            <?php 
                $area1 = get_field('area_1');
                $imagen = wp_get_attachment_image_src($area1['area_imagen'], 'mediano')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" />
            <p><?php echo esc_html( $area1['area_texto'] ); ?></p>
        </li>
        <li class="area">
            <?php 
                $area2 = get_field('area_2');
                $imagen = wp_get_attachment_image_src($area2['area_imagen'], 'mediano')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" />
            <p><?php echo esc_html( $area2['area_texto'] ); ?></p>
        </li>
        <li class="area">
            <?php 
                $area3 = get_field('area_3');
                $imagen = wp_get_attachment_image_src($area3['area_imagen'], 'mediano')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" />
            <p><?php echo esc_html( $area3['area_texto'] ); ?></p>
        </li>
        <li class="area">
            <?php 
                $area4 = get_field('area_4');
                $imagen = wp_get_attachment_image_src($area4['area_imagen'], 'mediano')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" />
            <p><?php echo esc_html( $area4['area_texto'] ); ?></p>
        </li>
    </ul>
</div>

<section class="clases">
    <div class="contenedor seccion">
        <h2 class="text-left texto-primario" >Nuestros Servicios</h2>

        <?php afrodita_lista_clases(4); ?>

        <div class="contenedor-boton">
            <a href="<?php echo esc_url( get_permalink( get_page_by_title('Servicios') ) ); ?>"    class="boton boton-primario">
                Ver Todos los Servicios
            </a>
        </div>
    </div>
</section>

<section class="instructores">
    <div class="contenedor seccion">
        <h2 class="text-left texto-primario">Trabajamos con: </h2>
        <p class="text-left">Entidades espirituales del alto y bajo mundo astral segun el caso en el que necesites ayuda. </p>

        <ul class="listado-instructores">
            <?php 
                $args = array(
                    'post_type' => 'instructores',
                    'post_per_page' => 10
                );
                $instructores = new WP_Query($args);
                while($instructores->have_posts()): $instructores->the_post();

            ?>
            <li class="instructor">
                <?php  the_post_thumbnail('mediano', $attr); ?>
                <div class="contenido text-center">
                    <h3><?php the_title(); ?></h3>
                    <?php the_content(); ?>
                </div>
            </li>
            <?php endwhile; wp_reset_postdata(); ?>
        </ul>
    </div>
</section>

<section class="testimoniales">
    <div class="contenedor seccion">
        <h2 class="text-left texto-blanco">Testimoniales</h2>
        <ul class="listado-testimoniales">
            <?php 
                $args = array(
                    'post_type' => 'testimoniales',
                    'posts_per_page' => 10
                );
                $testimoniales = new WP_Query($args);
                while($testimoniales->have_posts()): $testimoniales->the_post();
            ?>
            <li class="testimonial">
            <?php  the_post_thumbnail('mediano', $attr); ?>
                <div class="contenido text-center">
                    <h3><?php the_title(); ?></h3>
                    <?php the_content(); ?>
                </div> 
            </li>
            <?php endwhile; wp_reset_postdata(); ?>
        </ul>
    </div>
</section>

<?php get_footer(); ?>