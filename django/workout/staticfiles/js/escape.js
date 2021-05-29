$(document).keyup(function(e) {
     if (e.keyCode == 27) { // escape key maps to keycode `27`
        $.get('/escape/');
    }
});
