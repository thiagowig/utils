$(document).ready(function () {
  $('li').filter('.middle').addClass('selected')
  $('p').find('span').addClass('selected')

  $('#p1').css('background-color', 'blue')
  $('.p2').css({'color':'orange', 'font-weight': 'bold'})

  $('.p2').bind('click', function(event) {
    alert('Hi there!!!')
    alert('Target : ' + event.target.innerHTML)
  })
});
