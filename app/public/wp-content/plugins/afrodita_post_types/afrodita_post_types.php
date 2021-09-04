<?php
/*
    Plugin Name: Afrodita - Post Types
    Plugin URI: 
    Description: Añade Post Types al sitio Afrodita
    Version: 1.0.0
    Author: The witch
    Author URI:
    Text Domain: Afrodita
*/

if(!defined('ABSPATH')) die();


// Registrar Custom Post Type
function afrodita_clases_post_type() {

	$labels = array(
		'name'                  => _x( 'Clases', 'Post Type General Name', 'afrodita' ),
		'singular_name'         => _x( 'Clase', 'Post Type Singular Name', 'afrodita' ),
		'menu_name'             => __( 'Clases', 'afrodita' ),
		'name_admin_bar'        => __( 'Clase', 'afrodita' ),
		'archives'              => __( 'Archivo', 'afrodita' ),
		'attributes'            => __( 'Atributos', 'afrodita' ),
		'parent_item_colon'     => __( 'Clase Padre', 'afrodita' ),
		'all_items'             => __( 'Todas Las Clases', 'afrodita' ),
		'add_new_item'          => __( 'Agregar Clase', 'afrodita' ),
		'add_new'               => __( 'Agregar Clase', 'afrodita' ),
		'new_item'              => __( 'Nueva Clase', 'afrodita' ),
		'edit_item'             => __( 'Editar Clase', 'afrodita' ),
		'update_item'           => __( 'Actualizar Clase', 'afrodita' ),
		'view_item'             => __( 'Ver Clase', 'afrodita' ),
		'view_items'            => __( 'Ver Clases', 'afrodita' ),
		'search_items'          => __( 'Buscar Clase', 'afrodita' ),
		'not_found'             => __( 'No Encontrado', 'afrodita' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'afrodita' ),
		'featured_image'        => __( 'Imagen Destacada', 'afrodita' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'afrodita' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'afrodita' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'afrodita' ),
		'insert_into_item'      => __( 'Insertar en Clase', 'afrodita' ),
		'uploaded_to_this_item' => __( 'Agregado en Clase', 'afrodita' ),
		'items_list'            => __( 'Lista de Clases', 'afrodita' ),
		'items_list_navigation' => __( 'Navegación de Clases', 'afrodita' ),
		'filter_items_list'     => __( 'Filtrar Clases', 'afrodita' ),
	);
	$args = array(
		'label'                 => __( 'Clase', 'afrodita' ),
		'description'           => __( 'Clases para el Sitio Web', 'afrodita' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-welcome-learn-more',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'afrodita_clases', $args );

}
add_action( 'init', 'afrodita_clases_post_type', 0 );

// Register Custom Post Type
function afrodita_instructores() {

	$labels = array(
		'name'                  => _x( 'Instructores', 'Post Type General Name', 'afrodita' ),
		'singular_name'         => _x( 'Instructor', 'Post Type Singular Name', 'afrodita' ),
		'menu_name'             => __( 'Instructores', 'afrodita' ),
		'name_admin_bar'        => __( 'Instructor', 'afrodita' ),
		'archives'              => __( 'Archivo', 'afrodita' ),
		'attributes'            => __( 'Atributos', 'afrodita' ),
		'parent_item_colon'     => __( 'Instructor Padre', 'afrodita' ),
		'all_items'             => __( 'Todas Las Instructores', 'afrodita' ),
		'add_new_item'          => __( 'Agregar Instructor', 'afrodita' ),
		'add_new'               => __( 'Agregar Instructor', 'afrodita' ),
		'new_item'              => __( 'Nueva Instructor', 'afrodita' ),
		'edit_item'             => __( 'Editar Instructor', 'afrodita' ),
		'update_item'           => __( 'Actualizar Instructor', 'afrodita' ),
		'view_item'             => __( 'Ver Instructor', 'afrodita' ),
		'view_items'            => __( 'Ver Instructores', 'afrodita' ),
		'search_items'          => __( 'Buscar Instructor', 'afrodita' ),
		'not_found'             => __( 'No Encontrado', 'afrodita' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'afrodita' ),
		'featured_image'        => __( 'Imagen Destacada', 'afrodita' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'afrodita' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'afrodita' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'afrodita' ),
		'insert_into_item'      => __( 'Insertar en Instructor', 'afrodita' ),
		'uploaded_to_this_item' => __( 'Agregado en Instructor', 'afrodita' ),
		'items_list'            => __( 'Lista de Instructores', 'afrodita' ),
		'items_list_navigation' => __( 'Navegación de Instructores', 'afrodita' ),
		'filter_items_list'     => __( 'Filtrar Instructores', 'afrodita' ),
	);
	$args = array(
		'label'                 => __( 'Instructores', 'afrodita' ),
		'description'           => __( 'Instructores para el Sitio Web', 'afrodita' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 7,
        'menu_icon'             => 'dashicons-admin-users',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => false,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'instructores', $args );

}
add_action( 'init', 'afrodita_instructores', 0 );

// Register Testimoniales
function afrodita_testimoniales() {

	$labels = array(
		'name'                  => _x( 'Testimoniales', 'Post Type General Name', 'afrodita' ),
		'singular_name'         => _x( 'Testimonial', 'Post Type Singular Name', 'afrodita' ),
		'menu_name'             => __( 'Testimoniales', 'afrodita' ),
		'name_admin_bar'        => __( 'Testimonial', 'afrodita' ),
		'archives'              => __( 'Archivo', 'afrodita' ),
		'attributes'            => __( 'Atributos', 'afrodita' ),
		'parent_item_colon'     => __( 'Testimonial Padre', 'afrodita' ),
		'all_items'             => __( 'Todas Las Testimoniales', 'afrodita' ),
		'add_new_item'          => __( 'Agregar Testimonial', 'afrodita' ),
		'add_new'               => __( 'Agregar Testimonial', 'afrodita' ),
		'new_item'              => __( 'Nueva Testimonial', 'afrodita' ),
		'edit_item'             => __( 'Editar Testimonial', 'afrodita' ),
		'update_item'           => __( 'Actualizar Testimonial', 'afrodita' ),
		'view_item'             => __( 'Ver Testimonial', 'afrodita' ),
		'view_items'            => __( 'Ver Testimoniales', 'afrodita' ),
		'search_items'          => __( 'Buscar Testimonial', 'afrodita' ),
		'not_found'             => __( 'No Encontrado', 'afrodita' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'afrodita' ),
		'featured_image'        => __( 'Imagen Destacada', 'afrodita' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'afrodita' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'afrodita' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'afrodita' ),
		'insert_into_item'      => __( 'Insertar en Testimonial', 'afrodita' ),
		'uploaded_to_this_item' => __( 'Agregado en Testimonial', 'afrodita' ),
		'items_list'            => __( 'Lista de Testimoniales', 'afrodita' ),
		'items_list_navigation' => __( 'Navegación de Testimoniales', 'afrodita' ),
		'filter_items_list'     => __( 'Filtrar Testimoniales', 'afrodita' ),
	);
	$args = array(
		'label'                 => __( 'Testimoniales', 'afrodita' ),
		'description'           => __( 'Testimoniales para el Sitio Web', 'afrodita' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 8,
        'menu_icon'             => 'dashicons-editor-quote',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => false,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'testimoniales', $args );

}
add_action( 'init', 'afrodita_testimoniales', 0 );





