<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fD2dDC9YfIWl8Zyb2YA86uHxX/aI4rKudqThJIaT/OoxwvhbMfL89JMH8UFiWJluCrUV+xnD8y1DGJvAJYY1Qw==');
define('SECURE_AUTH_KEY',  'lzQf4EFF1I+112mCAEt8txUqB4U2oj1jL2PTfLLBFUuHfusbCGaD0rvmSiTKbjZyh27nuNTk1LRNDgcC4hUz4A==');
define('LOGGED_IN_KEY',    'pUlRIEZRL6ugcljFhsxWjleGUPFgJSLmjGQCa6PhRMvfx7autifD0F0pWhtwyv5x1nnJ0cEZjzVmfvWEoWPqRA==');
define('NONCE_KEY',        'OZD7mVZTJTgg7lDUxMwvwn6Z15xfyANL2y0Od/jtz8nRHj0Ro5wtJ5aKNvLtkUZiPYTe2K9cH8bDRCnqiyLZeA==');
define('AUTH_SALT',        'ivryzETsciKTstj3ujwhzgwJTIgKIPgULCYBIHqb56Gufqn0TUrN7sULZqXGW5suCYcYq+66kIrORao7nKt7eQ==');
define('SECURE_AUTH_SALT', 'yep0ugZS6HxieUml3dhUDrPOJfEOcwiVNhNaNo95m60ixoEJrzONfFNMJhsTBGnyy3sMQa9XMuY6/0v/1m5uOQ==');
define('LOGGED_IN_SALT',   'kUTUGZ6wIGTnIQfVdE1wMGkV5AqF/Qtk5QqIBPvWG5D0Lbqbn46UpYnGgRFgkMl9e8gpnDe6aZItoLc3FzBxRg==');
define('NONCE_SALT',       '7SEVlMudbr0rsWzOEW3CJYNRbl9Uy0PA8OFg3o2WNHT72+gH3HixsWO0zYhjrxbbGPjhrIFuRzG1I1HaYcMuJA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
