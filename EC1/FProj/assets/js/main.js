
$(document)
.on("submit", "form.js-register", function(event) {
	event.preventDefault();

	var _form = $(this);
	var _error = $(".js-error", _form);
	var dataObj = {
		Username: $("input[type='text']", _form).val(),
		password: $("input[type='password']", _form).val()
	};

	if(dataObj.Username.length !== 9) {
		_error
		.text("Please enter a valid Username")
		.show();
		return false;
	} else if (dataObj.password.length < 6) {
		_error
		.text("Please enter a passphrase that is at least 6 characters long")
		.show();
		return false;

	}

	// This is start of ajax process
	_error.hide();

	$.ajax({
		type: 'POST',
		url: 'ajax/register.php',
		data: dataObj,
		dataType: 'json',
		async: true,

	})
	.done(function ajaxDone(data) {
		console.log(data);
		if(data.redirect !== undefined) {
			window.location = data.redirect;
		} else if(data.is_logged_in === undefined) {
			_error
				.text(data.error)
				.show();
		}

	})
	.fail(function ajaxFailed(e) {
	
	})
	.always(function ajaxAlwaysDoThis(data) {
		console.log('Always');
	})

	return false;
})
.on("submit", "form.js-login", function(event) {
	event.preventDefault();

	var _form = $(this);
	var _error = $(".js-error", _form);
	var dataObj = {
		Username: $("input[type='text']", _form).val(),
		password: $("input[type='password']", _form).val()
	};

	if(dataObj.Username.length !== 9) {
		_error
		.text("Please enter a valid Username")
		.show();
		return false;
	} else if (dataObj.password.length < 6) {
		_error
		.text("Please enter a passphrase that is at least 6 characters long")
		.show();
		return false;

	}

	// This is start of ajax process
	_error.hide();

	$.ajax({
		type: 'POST',
		url: 'ajax/login.php',
		data: dataObj,
		dataType: 'json',
		async: true,
	})
	.done(function ajaxDone(data) {
		console.log(data);
		if(data.redirect !== undefined) {
			window.location = data.redirect;
		} else if(data.is_logged_in !== undefined) {
			_error
				.html(data.error)
				.show();
		}

	})
	.fail(function ajaxFailed(e) {
	
	})
	.always(function ajaxAlwaysDoThis(data) {
		console.log('Always');
	})

	return false;
})
