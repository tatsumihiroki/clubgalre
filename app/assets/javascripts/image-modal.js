$(function(){
    $("body").append("<div id='glayLayer'></div><div id='overLayer'></div>")

    $("#glayLayer").click(function(){
        $(this).hide()
        $("#overLayer").hide()
    })


})
