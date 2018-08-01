$(document).ready(function(){

	var setNewPasswordFormCheck = (function(){

		var _form = $('#set-new-password-form');
		var _input = _form.find('.input');
		var _password = _form.find('[type="password"]');

		var init = function(){
			_setUpListeners();
		}

		var _setUpListeners = function(){
			_form.on('submit', function(e){
				_validateForm(e);
			});
		}

		var _validateForm = function(e){
			e.preventDefault();

			$.each(_input, function(index, val){
				var input = $(val),
				value = input.val().trim(),
				textError = input.attr('placeholder').toLowerCase(),
				errorMsg = $('<div class="error"><div class="error__title">Введите ' + textError + '</div></div>'),
				errorMsgData = $('<div class="error">' 
					+'<div class="error__title error__title--with-desc">Неверный пароль</div>'
					+'<div class="error__desc"><p>Введите верные данные для входа или воспользуйтесь <a href="#">восстановлением пароля, </a>чтобы войти на сайт.</p>'
					+'</div></div>'),
				pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i,
				passwordVal = _password.val().trim();

				if (value.length === 0) {
					input.next('.error').slideUp(500, function(){$(this).remove()});
					errorMsg.insertAfter(input).hide().slideDown(500);
				}

				if (input.attr('type') === 'password') {
					if (passwordVal.length > 0){
						_form.unbind('submit').submit();
						// console.log('Yeeep');		
					}
				} 	

				input.on('focus', function(){
					input.next('.error').slideUp(500, function(){$(this).remove()});
				});
			})
		}

		return { init }
	}());

	setNewPasswordFormCheck.init();
});