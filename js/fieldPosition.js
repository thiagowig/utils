

var resposta = [
  { tipo: 'filler', tamanho: 254 },
  { nome: 'field_name', tipo: 'texto', tamanho: 2 },
];

var field = "field_name";
var position = 1;

resposta.forEach(function(element) {
  if (field === element.nome) {
    console.log(position);
  }

  position = position + element.tamanho;
});