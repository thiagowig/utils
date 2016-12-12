String.prototype.toUnderscore = function(){
	return this.replace(/([A-Z])/g, function($1){return "_"+$1.toLowerCase();});
};

var names = [
  "codRetornoOi",
  "numeroCartao",
  "retornoProduto",
  "nomeProduto",
  "retornoBandeira",
  "indicadorDeSenha",
  "permiteLogin",
  "codRetornoVq",
  "mensagemRetornoVq",
  "dtProc",
  "hrProc",
  "tipoPessoa",
  "orgConta",
  "contaCartao",
  "codigoProduto",
  "blockCodeConta1",
  "blockCodeConta2",
  "situacaoConta",
  "motivoBlockConta",
  "emailCliente",
  "relacionamentoDigital",
  "statusConta",
  "dataExpiracaoConta",
  "diaVencimento",
  "opcaoRecebimentoFatura",
  "debitoAutomatico",
  "nomeCliente",
  "cpfCnpjTitular",
  "cpfCnpjPortador",
  "indicadorTitularAdicional",
  "dataNascimento",
  "tipoCartao",
  "funcaoCartao",
  "dataExpiracaoCartao",
  "blockCodeCartao",
  "razaoBp",
  "firstUsageFlag",
  "flagProd",
  "familiaProd",
  "grLogin",
  "desbloqueiaAdic",
];

names.forEach(function(element) {
  console.log(element.toUnderscore());
});