<div class="container section-content">
	<h1 class="title-1">Редактировать профиль</h1>

	<?php 
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";
	 	?>

		<?php require ROOT . "templates/_parts/errors.tpl" ?>

	<form action="<?=HOST?>profile-edit" method="POST" class="row mb-10">
		<div class="col-4">
			<div class="title-6">Имя</div>
				<input class="input" type="text" name="name" placeholder="Введите имя" value="<?=$curentUser->name?>" />
			<div class="mb-30"></div>
			<div class="title-6">Фамилия</div>
				<input class="input" type="text" name="secondname" placeholder="Введите фамилию" value="<?=$curentUser->secondname?>" />
			<div class="mb-30"></div>
			<div class="title-6">Email</div>
				<input class="input" type="email" name="email" placeholder="Введите email" value="<?=$curentUser->email?>" />
		</div>
	</form>
	<form enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST" class="row mb-20">
		<div class="col-md-auto">
			<div class="file-upload">
				<fieldset>
					<legend>
						<div class="title-8 mb-2">Фотография</div>
						<div class="legend__descr">
							<p>Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</p>
						</div>
					</legend>
					<input class="inputfile" id="#file-1" type="file" name="avatar" data-multiple-caption="{count} файлов выбрано" multiple="multiple" />
					<label for="#file-1">Выбрать файл</label>
					<span>Файл не выбран</span>
				</fieldset>
			</div>
		</div>
	</form>
	<form action="<?=HOST?>profile-edit" method="POST" class="row mb-30">
		<div class="col-4">
			<div class="title-6">Страна</div>
				<input class="input" type="text" name="country" placeholder="Введите страну" value="<?=$curentUser->country?>" />
			<div class="mb-5"></div>
			<div class="title-6">Город</div>
				<input class="input" type="text" name="city" placeholder="Введите город" value="<?=$curentUser->city?>" />
		</div>
	</form>
	<form action="<?=HOST?>profile-edit" method="POST" class="row">
		<div class="col-3 space-between">
			<input type="submit" class="button button--save" name="profile-update" value="Сохранить">
			<a class="button" href="<?=HOST?>profile">Отмена</a>
		</div>
	</form>
</div>