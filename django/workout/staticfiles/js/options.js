$(function() {
    $("#options_button").mouseover(function(){
        $("#options_panel").css("visibility","visible");
        $("#options_button").css("visibility","hidden");
     });
     $("#options_panel").mouseleave(function(){
          $("#options_panel").css("visibility","hidden");
          $("#options_button").css("visibility","visible");
      });
});

$(function() {
    if ($('#options_reps').length >0 ) {
      $('#div_id_reps').toggle($('#options_reps').prop('checked'));
    }
    if ($('#options_kg').length >0 ) {
      $('#div_id_kg').toggle($('#options_kg').prop('checked'));
    }
    if ($('#options_km').length >0 ) {
      $('#div_id_km').toggle($('#options_km').prop('checked'));
    }

    $('#options_reps').change(function() {
        $('#div_id_reps').toggle($(this).prop('checked'));
    });
    $('#options_kg').change(function() {
        $('#div_id_kg').toggle($(this).prop('checked'));
    });
    $('#options_km').change(function() {
        $('#div_id_km').toggle($(this).prop('checked'));
    });
});


