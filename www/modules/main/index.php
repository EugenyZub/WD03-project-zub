<?php 

$details = R::find('about', 1);
//print_r($details);

$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

$title = "Главная";
$content = "Содержимое главной страницы";

//Контент для центральной части страницы
ob_start();//подключение буферизированного вывода
include ROOT . "templates/main/main.tpl";
/*		всё, от  ob_start() и до этой строки будет 
*буфферизовано и помещено в перменную						*/
$content = ob_get_contents();
ob_end_clean(); 

//вывод шаблона
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";


?>