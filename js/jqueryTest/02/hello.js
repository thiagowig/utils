$(document).ready(function() {
  $('a').addClass('test')

  $('a').click(function(event) {
    alert('Thanks!')
    event.preventDefault()

    $(this).hide('slow')
  })

  $('a').removeClass('test')
})