#language: pt

@regression
@products


Funcionalidade: Produtos
    Como um usuário do site e-commerce "Automation Practice" 
    Quero poder escolher qualquer produto disponível
    Para realizar minhas compras

    Contexto: Produto Escolhido
    Dado que o produto existente para compra já foi escolhido na Home

    @adicionar_ao_cart_pela_shop_window
    Esquema do Cenário: Escolher um produto existente
        Quando adicionar o "<produto>" ao Cart pela Home
        E aparecer a mensagem "<msg>"
        E escolher a opção "<opção>"
        Então deverá ser redirecionado a página "<página>"

        Exemplos:          
        |          "<produto>"         |  <msg>                                           | <opcao>            | <página>         |
        |  Faded Short Sleeve T-shirts | Product successfully added to your shopping cart | Continue shopping  | Home             |
        |  Blouse                      | Product successfully added to your shopping cart | Proceed to checkout| Página do produto| 

    @adicionar_ao_cart_pela_pdp
    Esquema do Cenário: Escolher um produto existente
        Quando clicar em cima do "<produto>", vai ser redirecionado para a página PDP
        Então deverá adicionar o "<produto>" no Cart 
        E aparecerá a mensagem "<msg>" 
        E escolhará a opção "<opção>"
        E deverá ser redirecionado a página "<página>"

        Exemplos:
        |          "<produto>"         |  <msg>                                           | <opcao>            | <página>         |
        |  Faded Short Sleeve T-shirts | Product successfully added to your shopping cart | Continue shopping  | Home             |
        |  Blouse                      | Product successfully added to your shopping cart | Proceed to checkout| Página do produto| 

      
    @validar_informacoes_pedido
    Esquema do Cenário: Estar na página do produto escolhido
        Quando estiver na página do produto escolhido 
        E verificar que o preço é igual a "<preco>"
        Então deverá escolher as informaçôes do "<produto>": "<quantity" "<size>" "<color>"

        Exemplos:          
        |          "<produto>"        | <preco>|<quantity>|<size>|<color>|
        |  Faded Short Sleeve T-shirts| $16.51 |    1     |   S  |  blue |
        |  Blouse                     | $27.00 |    4     |   M  | black |
        |  Printed Dress              | $26.00 |    2     |   L  | orange|


    @adicionar_ao_cart_pelo_search
    Esquema do Cenário: Adicionar ao Cart um produto existente pelo Search
        Dado que o usuário pesquise um produto existente para compra
        Quando adicionar o "<produto>" ao Cart pelo search "<search>"
        E o usuário visualizar a mensagem "<msg>"
        E escolher a opção "<opção>"
        Então ele deverá ser redirecionado a página "<página>"

        Exemplos:
        |      "<produto>"       |   <search>     |  <msg>                                            | <opcao>            | <página>         |
        |  Printed Summer Dress  |  Summer Dress  |  Product successfully added to your shopping cart | Continue shopping  | Home             |
        |  Printed Chiffon Dress |  Printed dress |  Product successfully added to your shopping cart | Proceed to checkout| Página do produto| 

      
    @validar_proceed_checkout
    Esquema do Cenário: Estar na página do Cart 
        Dado que o produto para compra já foi escolhido e adicionado ao Cart
        Quando o usuário clicar em Proceed Checkout pelo Cart flutuante 
        E for redirecionado a página Shopping-Cart Summary
        Então o usuário deverá visualizar as informaçôes do "<produto>": "<description>", "<avail", "<unit_price>", 
        "<qty>", "<total>", "<delete>", "<total_products>", "<total_shipping>", "<total>", "<tax>", "<total>"
        E deverá clicar em Proceed to Checkout novamente

        Exemplos:          
        |          <produto>           |  <description>    |<avail>  |<unit_price>|<qty>| <total> |<delete>|<total_products>|<total_shipping>| <total>|<tax>| <total>|
        |  Faded Short Sleeve T-shirts |                   | in stock|    $16.51  |  1  |  $16.51 |        |   $16.51       |     $2.00      | $18.51 |$0.00| $18.51 |
        |  Blouse                      |                   | in stock|    $27.00  |  4  |  $108.00|        |   $108.00      |     $2.00      | $110.00|$0.00| $110.00|
        |  Printed Dress               |                   | in stock|    $26.00  |  2  |  $52.00 |        |   $52.00       |     $2.00      | $54.00 |$0.00| $54.00 |