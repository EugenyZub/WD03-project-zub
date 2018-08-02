<?php 

define('DB_HOST', 'localhost');
define('DB_NAME', 'WD03-project-zub');
define('DB_USER', 'root');
define('DB_PASS', '');

/* Путь к корневой директории */
//define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

/*Путь до папаки wwww*/
define('ROOT', dirname(__FILE__).'/');

?>
