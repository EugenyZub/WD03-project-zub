<div class="header-user">
	<div class="avatar avatar--small">
		<?php 
			if( $_SESSION['logged_user']['avatar_small'] != "") { ?> 
				<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" title="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['secondname']?>" />
		<?php }
		?>
	</div>
	<a class="header-user__name" href="#">
		<?=$_SESSION['logged_user']['name']?>
		<?=$_SESSION['logged_user']['secondname']?></a>
	<div class="header-user__badge">Пользователь</div>
	<a class="button button--profile" href="<?=HOST?>profile">Профиль</a>
	<a class="button button--profile" href="<?=HOST?>logout">Выход</a>
</div>