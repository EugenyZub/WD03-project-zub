<?php 

//Хост сайта
define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

/*Путь до папаки wwww*/
define('ROOT', dirname(__FILE__).'/');

$errors = array();

require "config.php";
require "db.php";
require "libs/functions.php";
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
		include "modules/main/index.php";
		break;
	
	// ::::::::::::::: USERS ::::::::::::::::

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		require ROOT . "modules/login/registration.php";
		break;

	case 'logput':
		require ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		require ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		require ROOT . "modules/login/set-new-password.php";
		break;	

	case 'profile':
		require ROOT . "modules/profile/login.php";
		break;

	case 'profile-edit':
		require ROOT . "modules/profile/editing.php";
		break;

	case 'about':
		include "modules/about/index.php";
		break;

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'blog':
		include "modules/blog/index.php";
		break;	

	default:
		echo "404 and Main page!";
		break;
}

?>