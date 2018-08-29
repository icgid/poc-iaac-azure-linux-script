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
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', '<dbUserPassword>');

/** MySQL hostname */
define('DB_HOST', '<backendIPAddress>');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'K=H<gEqQUaN<3Y_B)}NM8lm MXamOaHhcFU|FHw{6i0W[vDZ;-[RNm]DEbft53?^');
define('SECURE_AUTH_KEY',  '<|i>1v5c)$I^*:W.N5}|,c#jf3W0=(qj;9IG)}4{q+]P<`x$VAZnX6:|L05l3Zoa');
define('LOGGED_IN_KEY',    'l:0I48E<bo7]XA_t9[j#d,IcevVCvIVwm`P Cp+nuB<jsU{Ey9,(M24n=S<WtF|)');
define('NONCE_KEY',        'bd%.|B  (g;O<IhZ~q%JrbKGh $nhAZRN!VGU JmlL,wAYdBS{>[oBit@u$N;8~C');
define('AUTH_SALT',        'E~Y:M]@:!+p}~XJnoP9y,OOlOJkQU3A42rU6GC%[7<0hL_)_6L<bh3+SFY.7VHP@');
define('SECURE_AUTH_SALT', 'jm~VLJ3naH/92zHlTkaE-hzf2.jrI<t3t[ady}jDq`%/CAL^W9BMR>;Ai][mM%jL');
define('LOGGED_IN_SALT',   '>s+}Ww 0XOPjgnTvNk-lO#5X]g<oc mE*W/c3Ii)-Nc:o_+N~V$;|ZbSG__&P:xn');
define('NONCE_SALT',       '(:_vPqZ,S2M^@31Hu,y<KqV<Np(j5`IO0)iMF;^N(dDc?$P*uSzgH>T<(<utFD.s');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');