function create(arguments) {
  var counter = 0

  return {
    increment: function () {
      counter++
    },

    print: function () {
      alert(counter)
    }
  }
}

$(document).ready(function () {
  //$('em').attr('title', 'Thiago SANTOS Fonseca')
  //var title = $('em').attr('title')
  //$('#divid').text(title)
  //$('p').css('background-color', 'yellow')

  $('em').addClass('selected')
  $('#myid').addClass('highlight')

  $('div').click(function () {
    var c = create()
    c.increment()
    c.print()
  })
})