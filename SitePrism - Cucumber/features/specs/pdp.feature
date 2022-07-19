#language: pt

@regression
@pdp

Funcionalidade: Página do Produto
    Sendo um usuário do site e-commerce "" 
    Quero poder personalizar produtos que irei comprar na PDP
    Para ter uma melhor experiência de compra

    Contexto: Estar na Página do Produto
     Dado que esteja na Home
     Quando realizar uma search por um produto existente
     E acessar a página do produto

    @mudar_colors_pdp
    Cenário: Trocar a cor do produto na PDP
     Quando alterar a cor do produto
     Então deverá alterar a imagem apresentada na PDP

    @aumentar_quantity_produto
    @aumentar_quantidade_produto_somente_pdp
    Cenário: Aumentar a quantidade do produto na PDP
     Quando aumentar a quantidade de produto
     Então deverá alterar a quantidade exibida na PDP

    @aumentar_quantity_produto
    @aumentar_quantity_produto_validando_cart
    Cenário: Aumentar a quantidade do produto na PDP aumenta no carrinho
     Quando aumentar a quantidade de produto
     E adicionar produto ao carrinho
     Então deverá ser adicionado ao carrinho com a quantidade aumentada

    @adicionar_produto__cart_pdp
    Cenário: Adicionar produto ao carrinho pela PDP
     Quando adicionar o produto ao carrinho
     Então o produto deverá ser adicionado ao carrinho com sucesso