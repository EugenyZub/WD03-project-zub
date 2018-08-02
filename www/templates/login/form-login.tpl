	<form class="login-page__form text-center" id="login-form" method="POST" action="<?=HOST?>login">
		
		<div class="title-1">Вход на сайт</div>
			
		<?php 
		// echo "<pre>";
		 //print_r($errors);
		// echo "</pre>";
	 	?>

		<?php   require ROOT . "templates/_parts/errors.tpl" ?>

		<input class="input" type="email" name="email" placeholder="Email" />
		<input class="input" type="password" name="password" placeholder="Пароль" />

		<div class="login-page__form-helpers">
			<label class="checkbox__label">
				<input class="checkbox__input" type="checkbox" name="checkbox"/>
				<span class="checkbox__type"></span>&nbsp;Запомнить меня
			</label>
			<a class="login-page__link" href="#">Забыл пароль</a>
		</div>

		<input name="enter" type="hidden" value="login" />
		<input name="login" type="submit" value="Войти" class="button button--enter" />

	</form>