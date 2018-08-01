<form class="login-page__form text-center" id="register-form" method="POST" action="<?=HOST?>registration">
	<div class="title-1">Регистрация</div>

	<?php 	
	//	echo "<pre>";
	//	print_r($_POST);
	//	echo "</pre>";
	?>

	<?php   require ROOT . "templates/_parts/errors.tpl" ?>
	


	<input class="input" type="email" name="email" placeholder="Email" />
	<input class="input" type="password" name="password" placeholder="Пароль" />
	<input name="registration" type="hidden" value="register" />
	<input name="register" type="submit" value="Регистрация" class="button button--enter" />
</form>