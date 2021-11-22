$(document).on('turbolinks:load', function(){
  // when .from-partner-trigger clicked
  $('.from-partner-trigger').on('click', function(){
    $('.matching-page').css(
      'display' , 'none'
    );
    $('.matching-trigger').removeClass(
      'border-red-400'
    );
    $('.from-partner-page').css(
      'display' , 'block'
    );
    $('.from-partner-trigger').addClass(
      'border-red-400'
    );
  })
  
  // when .matching-trigger clicked
  $('.matching-trigger').on('click', function(){
    $('.from-partner-page').css(
      'display' , 'none'
    );
    $('.from-partner-trigger').removeClass(
      'border-red-400'
    );
    $('.matching-page').css(
      'display' , 'block'
    );
    $('.matching-trigger').addClass(
      'border-red-400'
    );
  })
})