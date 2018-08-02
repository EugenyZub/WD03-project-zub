	<form class="login-page__form text-center" id="set-new-password-form" method="POST" action="<?=HOST?>set-new-password">
		<?php if ( $newPasswordReady == false ): ?>
		<div class="title-1">Введите новый пароль</div>
		<?php endif ?>
		
		<?php 
		// echo "<pre>";
		 //print_r($_POST['password']);
		// echo "</pre>";
	 	?>

		<?php   require ROOT . "templates/_parts/errors.tpl" ?>
		<?php require ROOT . "templates/_parts/_success.tpl" ?>
		
		<?php if ($newPasswordReady == false ): ?>
		<input class="input" type="password" name="resetpassword" placeholder="Новый пароль" />
		<?php endif ?>
			<div class="login-page__form-helpers">
				<a class="login-page__link" href="<?=HOST?>login">Перейти на старницу входа</a>
			</div>
		<?php if ($newPasswordReady == false ): ?>	
			<input name="resetemail" type="hidden" value="<?=$_GET['email']?>" />
			<input name="onetimecode" type="hidden" value="<?=$_GET['code']?>" />

			<input name="set-new-password" type="hidden" value="lost-password" />
			<input name="login" type="submit" value="Установить новый пароль" class="button button--enter" />
		<?php endif ?>
	</form>