	<form class="login-page__form text-center" id="lost-password-form" method="POST" action="<?=HOST?>lost-password">
		
		<div class="title-1">Забыл пароль</div>
			
		<?php 
		// echo "<pre>";
		 print_r($errors);
		// echo "</pre>";
	 	?>

		<?php   require ROOT . "templates/_parts/errors.tpl" ?>
		<?php require ROOT . "templates/_parts/_success.tpl" ?>

		<input class="input" type="email" name="email" placeholder="Email" />
		

		<div class="login-page__form-helpers">
			<a class="login-page__link" href="<?=HOST?>login">Перейти на страницу входа</a>
		</div>

		<input name="lost-password" type="hidden" value="lost-password" />
		<input name="login" type="submit" value="Восстановить пароль" class="button button--enter" />

	</form>