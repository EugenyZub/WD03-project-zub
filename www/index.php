<?php 

//Хост сайта
define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

/*Путь до папаки wwww*/
define('ROOT', dirname(__FILE__).'/');

$errors = array();
$success = array();

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();
/*-------------------------------------------

РОУТЕР

--------------------------------------------*/
//request URL

$uri = $_SERVER["REQUEST_URI"]; 
$uri = rtrim($uri, "/"); //delete last slash
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); //delete first slash
$uri = explode('?', $uri); // 2 parts before and after "?" 

switch ($uri[0]) {
	case '':
		include ROOT . "modules/main/index.php";
		break;
	
	// ::::::::::::::: USERS ::::::::::::::::

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		require ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		require ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		require ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		require ROOT . "modules/login/set-new-password.php";
		break;	

	case 'profile':
		require ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		require ROOT . "modules/profile/edit.php";
		break;

	case 'about':
		include ROOT . "modules/about/index.php";
		break;

	case 'contacts':
		include ROOT . "modules/contacts/index.php";
		break;

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;	

	default:
		echo "404 and Main page!";
		break;
}

?>