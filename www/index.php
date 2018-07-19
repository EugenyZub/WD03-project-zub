<?php 

require "config.php";

//echo HOST;
//echo ROOT;
//print_r($_SERVER);
echo "index.php";
echo "<br><br>";


/*-------------------------------------------
РОУТЕР
--------------------------------------------*/
//request URL

$uri = $_SERVER["REQUEST_URI"]; 
$uri = rtrim($uri, "/"); //delete last slash
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); //delete first slash
$uri = explode('?', $uri); // 2 parts before and after "?" 

echo $uri[0];
echo "<br><br>";

switch ($uri[0]) {
	case '':
		include "modules/main/index.php";
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