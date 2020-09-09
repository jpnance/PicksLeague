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
