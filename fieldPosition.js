

var resposta = [
  //dados que o OI utiliza do si  stema DKs
  { tipo: 'filler', tamanho: 254 },
  { nome: 'cod_retorno_oi', tipo: 'texto', tamanho: 2 },
  { nome: 'numero_cartao', tipo: 'texto', tamanho: 19, log: false },
  { tipo: 'filler', tamanho: 81 },
  { nome: 'retorno_produto', tipo: 'texto', tamanho: 2 },
  { nome: 'nome_produto', tipo: 'texto', tamanho: 45 },
  { nome: 'retorno_bandeira', tipo: 'texto', tamanho: 2 },
  { nome: 'bandeira', tipo: 'texto', tamanho: 4 },
  { nome: 'indicador_de_senha', tipo: 'texto', tamanho: 1 },
  { nome: 'permite_login', tipo: 'texto', tamanho: 2 },
  //Retorno do VQ
  { nome: 'cod_retorno_vq', tipo: 'texto', tamanho: 3 },
  { nome: 'mensagem_retorno_vq', tipo: 'texto', tamanho: 40 }, // mensagem se houve problemas de acesso às bases vq
  { nome: 'dt_proc', tipo: 'texto', tamanho: 8 },
  { nome: 'hr_proc', tipo: 'texto', tamanho: 6 },
  { tipo: 'filler', tamanho: 2 },
  //CAMPOS CONTA (AMBS)
  { nome: 'tipo_pessoa', tipo: 'texto', tamanho: 1 }, // F - fisica, J -juridica
  { tipo: 'filler', tamanho: 100 },
  { tipo: 'filler', tamanho: 2 },        
  { nome: 'org_conta', tipo: 'texto', tamanho: 3 },
  { nome: 'conta_cartao', tipo: 'texto', tamanho: 19, log: false },
  { nome: 'chpras', tipo: 'texto', tamanho: 11 },
  { nome: 'codigo_produto', tipo: 'texto', tamanho: 5 },
  //CAMPOS RETORNO DE BLOQUEIOS           
  { nome: 'block_code_conta1', tipo: 'texto', tamanho: 1 },
  { nome: 'block_code_conta2', tipo: 'texto', tamanho: 1 },
  { nome: 'situacao_conta', tipo: 'texto', tamanho: 1 },
  { nome: 'motivo_block_conta', tipo: 'texto', tamanho: 2 },
  { nome: 'email_cliente', tipo: 'texto', tamanho: 60 },
  { nome: 'relacionamento_digital', tipo: 'texto', tamanho: 2 },   //*¹
  { nome: 'status_conta', tipo: 'texto', tamanho: 1 },
  { nome: 'data_expiracao_conta', tipo: 'texto', tamanho: 8 },
  { nome: 'dia_vencimento', tipo: 'texto', tamanho: 2 },
  { nome: 'opcao_recebimento_fatura', tipo: 'texto', tamanho: 1 },
  { nome: 'debito_automatico', tipo: 'texto', tamanho: 1 },
  { tipo: 'filler', tamanho: 100 },
  { tipo: 'filler', tamanho: 2 },
  //CAMPOS CARTAO (AMED)             
  { nome: 'nome_cliente', tipo: 'texto', tamanho: 40 },
  { nome: 'cpf_cnpj_titular', tipo: 'texto', tamanho: 14 },
  { nome: 'cpf_cnpj_portador', tipo: 'texto', tamanho: 14 },
  { nome: 'indicador_titular_adicional', tipo: 'texto', tamanho: 1 },
  { nome: 'data_nascimento', tipo: 'texto', tamanho: 8 },
  { nome: 'tipo_cartao', tipo: 'texto', tamanho: 2 }, //*²
  { nome: 'funcao_cartao', tipo: 'texto', tamanho: 1 },  //FUNCAO ATIVA - M --> MULTIPLO - C --> CREDITO
  { nome: 'data_expiracao_cartao', tipo: 'texto', tamanho: 8 },
  { nome: 'block_code_cartao', tipo: 'texto', tamanho: 1 },
  { nome: 'razao_bp', tipo: 'texto', tamanho: 2 },
  { nome: 'first_usage_flag', tipo: 'texto', tamanho: 1 },
  { tipo: 'filler', tamanho: 100 },
  { tipo: 'filler', tamanho: 2 },
  { nome: 'flag_prod', tipo: 'texto', tamanho: 2 },
  { nome: 'familia_prod', tipo: 'texto', tamanho: 3 },
  { nome: 'gr_login', tipo: 'texto', tamanho: 2 },
  { nome: 'embossing', tipo: 'texto', tamanho: 1 },
  { tipo: 'filler', tamanho: 100 },
  { tipo: 'filler', tamanho: 2 },
  { nome: 'desbloqueia_adic', tipo: 'texto', tamanho: 1 },
  { tipo: 'filler', tamanho: 500 },
];

var field = "debito_automatico";
var position = 1;

resposta.forEach(function(element) {
  if (field === element.nome) {
    console.log(position);
  }

  position = position + element.tamanho;
});