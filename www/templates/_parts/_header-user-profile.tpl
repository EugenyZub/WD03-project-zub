<div class="header-user">
	<div class="avatar avatar--small">
		<img src="../../../img/avatars/avatar-1.jpg" title="Юрий Ключевский" />
	</div>
	<a class="header-user__name" href="#">
		<?=$_SESSION['logged_user']['name']?>
		<?=$_SESSION['logged_user']['secondname']?></a>
	<div class="header-user__badge">Пользователь</div>
	<a class="button button--profile" href="<?=HOST?>/profile">Профиль</a>
	<a class="button button--profile" href="<?=HOST?>/logout">Выход</a>
</div>