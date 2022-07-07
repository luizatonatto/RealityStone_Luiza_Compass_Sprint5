#Language PT

@regression
@busca
Funcionalidade: Busca
    Como um usuário do site e-commerce "" 
    Quero poder buscar por diferentes produtos
    Para poder personalizar minhas compras

    Contexto: Estar na Home
    Dado que esteja na Home

    @busca_por_produto
    Cenário: Buscar por um produto existente
     Quando realizar uma busca por um produto existente
     Então deverão ser retornados resultados na busca

    @busca_por_produtos_diferentes
    Esquema do Cenário: Buscar por produtos existente
     Quando buscar pelo produto "<produto>"
     Então deverão ser retornados resultados na busca

     Exemplos:
     |     produto   |
     |  Speaker      |
     |  Laptops      |
     |  Tablets      |
     |  Headphones   |
     |  Mice         |

        # primeira execução = Speakers
        # segunda execução = Laptops
        # terceira execução = Tablets
        # quarta execução = Headphones
        # quinta execução = Mice