$(window).load(function() {
	var deck = new $.scrolldeck({
		buttons: '.nav li a' 
	});
});

function refreshScrollSpy () {
	$('[data-spy="scroll"]').each(function () {
		$(this).scrollspy('refresh');
	});
}

$(window).resize($.throttle(250, refreshScrollSpy));
