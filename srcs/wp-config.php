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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_base' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '|jrD_:Q(_mmBqjyt&79TktAm|0c:9DYm9ox{A}=_+H;1;E8cVkD+|YsFN8@;dRsc');
define('SECURE_AUTH_KEY',  '-p+@9zte*lf4/4~Ibh02)<>|:-81zKP+jO:lNU#X/.i~9kr/;}^9:|<Dm[N-CV<g');
define('LOGGED_IN_KEY',    'y#cxl;-^wdHAHVRk3)l8<l=t~f<e*;j%~BH&+Gc7aPV#6albVkjq>|,]`wh*e*A9');
define('NONCE_KEY',        'GIu0(<KSC7mfGeBJvLJToamR|#-^5y*c8Oc+o9P}6jN8hTP4iep`jAbB B~?T#,V');
define('AUTH_SALT',        'RD>+ZV%NhHwL^k*?I`Yi)bzE=JS9-(rBkmD;K+[;}4B=6ElowEm2NStj*[cfUWwg');
define('SECURE_AUTH_SALT', '+%#;{L&<A~5ZP,e,S<lA>%GU@?aMJ^X^K=*X#Uqoe|sfUr|;sf*qSUo;}:i])yrB');
define('LOGGED_IN_SALT',   'W11Lw89[NR,mD!]KkJxgn:@+B}g%fDKyQ6@17|@:-md({oWRoUsKPqm!^(9m|c5b');
define('NONCE_SALT',       '7CYuOK,lU.S=F|E[X1fMb5LJBuhQb@RjV70]:lac-^Oyg[Cwx?QjEa+:R+c[$33k');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
