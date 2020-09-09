function picksFocus() {
	if (document.getElementById('loginBox').style.visibility != 'hidden') {
		document.getElementById('email').focus();
	}
}

function viewProfile(user) {
	var pop = window.open('viewprofile.php?nick_name=' + user,
	    'viewProfile',
	    'menubar=0, resizeable=1, width=500, height=500, status=0, toolbar=0, location=0, directories=0, scrollbars=1');
	pop.focus();
	//location.assign('viewProfile.php?nick_name=' + user);
}

function toggleVisibility(e) {
	if (e.style.display == "") {
		e.style.display = "none";
	}
	else {
		e.style.display = "";
	}
}

$(document).ready(function() {
	$('form#loginnav').on('submit', function(e) {
		var $form = $(e.currentTarget);
		var $button = $form.find('input');

		e.preventDefault();

		$.post($form.attr('action'), $form.serializeArray(), function() {
			window.location = '/bigboard.php?success=email-sent';
		}).fail(function(response) {
			if (response.status == 400) {
				window.location = '/bigboard.php?error=invalid-email';
			}
			else if (response.status == 404) {
				window.location = '/bigboard.php?error=not-found';
			}
			else {
				window.location = '/bigboard.php?error=unknown';
			}
		});

		$button.attr('disabled', true);
	});
});
