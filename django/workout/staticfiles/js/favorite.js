$(function() {
    $(".favorite.hidden").mouseover(function(){
        $(this).find("a").css("visibility","visible");
     });
     $(".favorite.hidden").mouseleave(function(){
          $(this).find("a").css("visibility","hidden");
      });
});


