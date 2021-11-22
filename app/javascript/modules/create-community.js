$(document).on('turbolinks:load', function(){
  // .create-comunity-form-trigger clicked
  $('.create-community-form-trigger').on('click', function(){
    $('.create-community-form').css(
      'display' , 'block'
    )
  })

  // .close.button clicked 
  $('.close-button').on('click', function(){
    $('.create-community-form').css(
      'display' , 'none'
    )
  })
})