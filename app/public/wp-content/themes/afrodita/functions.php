<?php

// Consulta reutilizables
require get_template_directory() . '/inc/queries.php';

// Cuando el tema es activado
function afrodita_setup() {
    // Habilitar imagenes destacadas
    add_theme_support('post-thumbnails');

    // Agregar imagenes de tamaño personalizado
    add_image_size('square', 350, 350, true);
    add_image_size('portrait', 350, 724, true);
    add_image_size('cajas', 400, 375, true);
    add_image_size('mediano', 700, 400, true);
    add_image_size('blog', 966, 644, true);
}
add_action('after_setup_theme', 'afrodita_setup' );

// Menus de navegacion, agregar mas utilizando el arreglo
function afrodita_menus() {
    register_nav_menus(array(
       'menu-principal' =>  __( 'Menu Principal', 'afrodita')
    ));
}

add_action('init', 'afrodita_menus');

// Scripts y Styles
function afrodita_scripts_styles() { 

    wp_enqueue_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.1');

    wp_enqueue_style('slicknavCSS', get_template_directory_uri() . '/css/slicknav.min.css', array(), '1.0.10');

    wp_enqueue_style('google font', 'https://fonts.googleapis.com/css2?family=Fraunces:ital@1&display=swap', array(), '1.0.0');
    
    //La hoja de estilo principal
    wp_enqueue_style('style', get_stylesheet_uri(), array('normalize'), '1.0.0');

    wp_enqueue_script('slicknavJS', get_template_directory_uri() . '/js/jquery.slicknav.min.js', array('jquery'), '1.0.0', true);

    wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery','slicknavJS'), '1.0.0', true);  

}
add_action('wp_enqueue_scripts', 'afrodita_scripts_styles');

// Definir zona de widgets

function afrodita_widgets() {
    register_sidebar(array(
        'name' => 'Sidebar 1',
        'id' => 'sidebar_1',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="text-center texto-primario">',
        'after_title' => '</h3>'
    ));
    register_sidebar(array(
        'name' => 'Sidebar 2',
        'id' => 'sidebar_2',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="text-center texto-primario">',
        'after_title' => '</h3>'
    ));
}
add_action('widgets_init', 'afrodita_widgets');

// Imagen Hero

function afrodita_hero_image() {
    // Obtener el id pagina principal
    $front_page_id = get_option('page_on_front');
    // Obtener id imagen
    $id_imagen = get_field('imagen_hero', $front_page_id);
    // Obtener la imagen 
    $imagen = wp_get_attachment_image_src($id_imagen, 'full')[0];

    // Style Css
    wp_register_style('custom', false);
    wp_enqueue_style('custom');

    // Imagen Destacada
    $imagen_destacada_css = "
        body.home .site-header {
            background-image: linear-gradient( rgba(0,0,0,0.75), rgba(0,0,0,0.75) ), url($imagen);
        }
    ";

    wp_add_inline_style('custom', $imagen_destacada_css);
}
add_action('init', 'afrodita_hero_image' );