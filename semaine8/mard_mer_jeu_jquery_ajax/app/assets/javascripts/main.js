$(document).on('turbolinks:load', function () {    
$('ul > .card').hide();
    
    $('.container > ul > li').click(function(){
      if( $(this).next().is(":hidden") ) {
        $('ul > .card').hide(500);
        $(this).next().show(500);
       }
       else
       {
        $(this).next().hide(500);
       }
    });
$('.nav-item').hide();
    $('.rounded-circle').click(function(){
      if( $('.nav-item').is(":hidden") ) {
        $('.nav-item').toggle(500);
       }
       else
       {
        $('.nav-item').toggle(500);
       }
    });
    $('.login').hide();
    $('.logina').click(function(){
          $('.login').toggle(500);
    });
    $('.inscr').hide();
    $('.signup').click(function(){
          $('.inscr').toggle(500);
    }); 


   
});


