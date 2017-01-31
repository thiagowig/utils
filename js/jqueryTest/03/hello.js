$(document).ready(function () {
  $.get("http://www.uol.com.br", function (data) {
    alert("Data Loaded: " + data);
  });
})