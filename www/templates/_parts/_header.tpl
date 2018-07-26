<?php 
	
	if ( Isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == 'admin' ) {
		include ROOT . "templates/_parts/_admin-panel.tpl";
	}
	
?>

<header class="header-bg">
	<div class="header">
		<div class="header__top">
			<?php  include( ROOT . "templates/_parts/_header-logo.tpl"); ?>	
			<?php 
				if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
					//Пользователь на сайте
					if ( $_SESSION['role'] != 'admin' ) {
						//На сайте пользователь
						include( ROOT . "templates/_parts/_header-user-profile.tpl");
					}
				}  else {
						//Нет пользователя
						include( ROOT . "templates/_parts/_header-login-links.tpl");
					}
			?>

		</div>

		<?php  include( ROOT . "templates/_parts/_header-nav.tpl"); ?>	
	</div>
</header>