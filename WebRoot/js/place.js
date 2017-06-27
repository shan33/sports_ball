$(document).ready(function(){
    $('#place_info').hide() ;
    $('#canvas').mouseenter(function(){
        $('#place_info').show() ; 
    }).mouseleave(function(){
        $('#place_info').hide() ;
    }) ;
}) ;

