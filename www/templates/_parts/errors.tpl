<?php 
		foreach ($errors as $error) {
			if( count($error) == 1) { ?>
			<!-- Однострочная ошибка -->

			<div class="error"><?=$error['title']?></div>

	<?php } else if( count($error) == 2) { ?>
		
			<!-- Ошибка с описанем -->
			<div class="error">
				<div class="error__title error__title--with-desc"><?=$error['title']?></div>
				<div class="error__desc">
					<?=$error['desc']?>
				</div>
			</div>


	<?php 
			}
		}

	 ?>