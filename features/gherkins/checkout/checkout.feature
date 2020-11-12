# language:pt

Funcionalidade: Checkout - Validar telas de checkout
  Como usuário da aplicação
  Quero adicionar um produto ao carrinho 
  Para gerar um pedido

  @validar_criacao_ordem
  Esquema do Cenário: Validar fluxo de checkout
    Dado acessar a página do produto
    Quando adicionar um produto ao carrinho
    Então validar fechamento de pedido para cenário "<tipo>"

    Exemplos:
      | tipo     |
      | positivo |
      | negativo |
