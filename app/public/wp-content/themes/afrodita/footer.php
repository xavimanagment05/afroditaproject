        <footer class="site-footer contenedor">
            <hr>
            <div class="contenido-footer">
            <?php 
                $args = array(
                    'theme_location' => 'menu-principal',
                    'container' => 'nav',
                    'container_class' => 'menu-principal'
                );
                wp_nav_menu($args);
            ?>
            
            <p class="copyright"> DR. <?php echo get_bloginfo('name')
             . " " . date('Y'); ?>
            </p>
            </div>
        </footer>

        <?php wp_footer(); ?> 
    
    </body>
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/60af30886699c7280da923f7/1f6m5b5rp';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</html>