<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>Вход на сайт</title>
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/bootstrap-4-grid/grid.min.css" />
	<!-- endbuild -->
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/main.css" />
	<!-- endbuild -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="login-page">
	<div class="login-page-content">
		<div class="login-page">
			<div class="container-fluid pt-45 pl-100 pr-50">
				<div class="row justify-content-between">
					<div class="col-md-auto">
						<div class="logo">
							<div class="logo__icon"><i class="far fa-paper-plane"></i></div>
							<div class="logo__text"><a class="header-logo__title" href="#">Супер Сайт</a>
								<div class="header-logo__sub"></div>
							</div>
						</div>
					</div>

					<div class="col-md-auto">
						<?php if( $uri[0] == 'registration' ) { ?>
							<a class="login-page__link" href="<?=HOST?>login">Вход</a>
						<?php } else { ?>
							<a class="login-page__link" href="<?=HOST?>registration">Регистрация</a>
						<?php } ?>



						
					</div>
				</div>
			</div>
			<div class="container login-page__block">
				<div class="row align-items-center justify-content-center">
					<div class="col-4">
						<?=$content?>
					</div>
				</div>
			</div>
			<div class="container pb-15">
				<div class="row justify-content-center">
					<div class="col-md-auto text-center login-page__copyright">
						<p>© Dream-Team</p>
						<p>Создано с &nbsp<i class="fas fa-heart"></i>&nbsp в <a href="#" target="_blank">WebCademy.ru</a> в 2018 году</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- build:jsLibs js/libs.js -->
	<script src="<?=HOST?>templates/assets/libs/jquery/jquery.min.js"></script>
	<!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="<?=HOST?>templates/assets/js/register-form-check.js"></script>
	<!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<!--<script src="<?=HOST?>templates/assets/js/main.js"></script>-->
	<!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>