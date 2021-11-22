$(document).on('turbolinks:load', function(){
  // .search-form-trigger clicked
  $('.search-form-trigger').on('click', function(){
    $('.search-form').css(
      'display' , 'block'
    )
  })

  // .close.button clicked 
  $('.close-button').on('click', function(){
    $('.search-form').css(
      'display' , 'none'
    )
  })
})