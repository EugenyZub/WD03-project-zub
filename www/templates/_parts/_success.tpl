<?php 
		foreach ($success as $item) {
			if( count($item) == 1) { ?>
			<!-- Однострочная ошибка -->

			<div class="error error-success"><?=$item['title']?></div>

	<?php } else if( count($item) == 2) { ?>
		
			<!-- Ошибка с описанем -->
			<div class="error">
				<div class="error__title error__title--with-desc error--success"><?=$item['title']?></div>
				<div class="error__desc">
					<?=$item['desc']?>
				</div>
			</div>


	<?php 
			}
		}

	 ?>