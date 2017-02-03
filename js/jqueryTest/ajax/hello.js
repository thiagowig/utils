$(document).ready(function() {
  $('#driver').click(function(event) {
    $.getJSON('http://rest-service.guides.spring.io/greeting', function(data) {
      $('#stage').html('<p> ID: ' + data.id + '</p>')
      $('#stage').append('<p> Content: ' + data.content + '</p>')
    })
  })
})
