$(function() {
    $("td.day").mouseover(function(){
        $(this).find(".edit").css("visibility","visible");
     });
     $("td.day").mouseleave(function(){
          $(this).find(".edit").css("visibility","hidden");
      });
});


