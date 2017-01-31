$(document).ready(function() {
  $.ajax({
    url: 'http://rest-service.guides.spring.io/greeting'
  }).then(function(data) {
    $('#id').append(data.id)
    $('#content').append(data.content)
  })
})

