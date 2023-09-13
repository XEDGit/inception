<?php
define('DB_NAME', getenv("MYSQL_DATABASE"));
define('DB_USER', getenv("MYSQL_USER"));
define('DB_PASSWORD', getenv("MYSQL_PASSWORD"));
define('DB_HOST', getenv("MYSQL_HOSTNAME"));
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
define('AUTH_KEY',         'SU:Bt0!,*<RxM8rowK`eUK2|t7$-t^{Qalc5e1`^r=&f$-G||7uxe@6R0h&Nc6h+');
define('SECURE_AUTH_KEY',  'F+.k!1lxKLgSB;i/IAE:tAWXTF4;Y:PimHz1[@8=xHQ.m%1h2?Rxu$[NPO(@?nZs');
define('LOGGED_IN_KEY',    'zu:1?2>;*@>3c82~l|5Ws!k5)#)br2g07};oTco<qR`?E~_+iD5*i5@U*oeG_2OJ');
define('NONCE_KEY',        'o(gVZRNV[>/`klxW!ZVf*ZxvE0#AQ*t|ED-]G*lc:S,T^{g,V2WP;9Wb{@Nqgt|c');
define('AUTH_SALT',        'F?{)!%ihb^SNEq:)-=z+}AA/+pSt7D--KDna9x?Y}AgONp;/d!wwkjLr+{?0-S3P');
define('SECURE_AUTH_SALT', '|s$+EF,-5|BC!1I7Q)mk*)*C!{OjZHowgjrZ$xhVpfy&|@AVmm-eX$|DZ=N-}k[)');
define('LOGGED_IN_SALT',   '~9[~$9 ]E,e-9*8K` bGUxtrhxPuyQp;?V!`c}pJO5gW54F;V i2kOw03?-U9;:e');
define('NONCE_SALT',       'IuRjj7gY`J9%`hm5J*P6{4|{8?!dSEy.th#4 jJSiLz_bn_>BN=Ig_gN6]R`Hyyk');


$table_prefix = 'wp_';

define('WP_DEBUG', false);

if ( ! defined('ABSPATH') ) {
    define('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';