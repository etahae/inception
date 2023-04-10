<?php

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'tnamir' );

/** Database password */
define( 'DB_PASSWORD', 'taha1337' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/* port **/

// define('WPSITEURL','http://localhost:9000/');
// define('WPHOME','http://localhost:9000/');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(UO[;~-?XeL{gyf-|[{Letx(-,EnM<94yVJfJT4h=a:ix>nLX%>IS+Ia[Kt0}OUg' );
define( 'SECURE_AUTH_KEY',  'vIyW[_l{_at#&8U9t-+$K-6b=cF.WjGv]ZV@=XwZ5#o_-.7S;Aa{UsoW;9Q}G~ZX' );
define( 'LOGGED_IN_KEY',    '6oX;=F[0]bRP8er!zG|}sKg!ydh!edb`4lmkwR[:)S1SHjW4yM$(smBF~5WU#JB}' );
define( 'NONCE_KEY',        'qNJ%^_7QV*SRLm`ByH&+LsxE(T-P+<rq-uq*E@h{q,m|y*1p$s0@AUkqe^IW-gFF' );
define( 'AUTH_SALT',        'BW(|G{:*^y](s&>X6DeD-5)be1-v1jd@+2%#S5T.pp6SM5huZMG3S#z)5NZu)s{-' );
define( 'SECURE_AUTH_SALT', 'gdEDy5<v&RgZ{ 2`X5H$TtKv|p_pegpQOLeAzT15{!lGEBDF_9YAi9I>+$FcPzfI' );
define( 'LOGGED_IN_SALT',   'Ny0!{h-aBY_~h$m)n)u--,`F3!c-A*#28*a|l$MeW{-cSB/T=1Gfo?F+E>XUV^-J' );
define( 'NONCE_SALT',       'om.I&OsC>@gUa:|XKs-/vgZRuR7g`3M^> q[o&R3{i_Lly+h?A|-dL$MNe]hJrG|' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';