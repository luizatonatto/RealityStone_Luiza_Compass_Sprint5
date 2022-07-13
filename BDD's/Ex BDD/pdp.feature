#Language PT

@regression
@pdp
Funcionalidade: Página do Produto
    Sendo um usuário do site e-commerce "" 
    Quero poder personalizar produtos que irei comprar na PDP
    Para ter uma melhor experiência de compra

    Contexto: Estar na Página do Produto
     Dado que esteja na Home
     Quando realizar a busca por um produto existente
     E acessar a página do produto

    @trocar_de_cor_pdp
    Cenário: Trocar a cor do produto na PDP
     Quando alterar a cor do produto
     Então deverá alterar a imagem apresentada na PDP

    @aumentar_quantidade_produto
    @aumentar_quantidade_produto_somente_pdp
    Cenário: Aumentar a quantidade do produto na PDP
     Quando aumentar a quantidade de produto
     Então deverá alterar a quantidade exibida na PDP

    @aumentar_quantidade_produto
    @aumentar_quantidade_produto_validando_carrinho
    Cenário: Aumentar a quantidade do produto na PDP aumenta no carrinho
     Quando aumentar a quantidade de produto
     E adicionar produto ao carrinho
     Então deverá ser adicionado ao carrinho com a quantidade aumentada

    @adicionar_produto__carrinho_pdp
    Cenário: Adicionar produto ao carrinho pela PDP
     Quando adicionar o produto ao carrinho
     Então o produto deverá ser adicionado ao carrinho com sucesso