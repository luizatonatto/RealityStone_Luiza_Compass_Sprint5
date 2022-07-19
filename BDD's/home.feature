#language: pt
@regression
@home

Funcionalidade: Home
  Como um usuário do site e-commerce "Automation Practice" 
  Quero poder acessar a página principal Home
  Para poder realizar compras

  Contexto: Estar na Home 
  Dado que esteja na Home do site e-commerce "Automation Practice" 

  @verificacao_mouse_over
  Cenário: Realizar mouse-over pela home para checar clicáveis
    Quando realizar o mouse-over pela extensão da Home 
    E checar se todas as funcionalidades são clicáveis
    Então deverá clicar e ser direcionado a página requisitada

  @verificacao_tab
  Cenário: Realizar navegação tab pela home 
    Quando navegar com o botão tab pela extensão da Home 
    Então o tab da página passarará por cada item do início ao fim

  @verificacao_shop_window
  Esquema do Cenário: Acessar produtos da vitrine 
      Quando clicar em uma categoria da vitrine
      E escolher um produto exposto
      Então deverá ser redirecionado para a página do produto "<produto>"

    Exemplos:          
    |          "<produto>"         |
    |  Faded Short Sleeve T-shirts |
    |  Blouse                      |
    |  Printed Dress               |
    |  Printed Dress 2             |
    |  Printed Summer Dress        |
    |  Printed Summer Dress 2      |
    |  Printed Chiffon Dress       |

  @verificacao_shop_window_popular
  Esquema do Cenário: Acessar produtos da vitrine popular 
    Quando clicar na vitrine de categoria "<categoria>" 
    E escolher um produto exposto
    Então deverá ser redirecionado para a página do produto "<produto>" 

    Exemplos:          
  | <categoria>  |          "<produto>"         |
  |   popular    |  Faded Short Sleeve T-shirts |
  |   popular    |  Blouse                      |
  |   popular    |  Printed Dress               |
  |   popular    |  Printed Dress 2             |
  |   popular    |  Printed Summer Dress        |
  |   popular    |  Printed Summer Dress 2      |
  |   popular    |  Printed Chiffon Dress       |

  @verificacao_shop_window_best_sellers
  Esquema do Cenário: Acessar produtos da vitrine best sellers
    Quando clicar na vitrine de categoria "<categoria>" 
    E escolher um produto exposto
    Então deverá ser redirecionado para a página do produto "<produto>"


    Exemplos:          
    |   "<categoria>" |          "<produto>"         |
    |   best sellers  |  Printed Chiffon Dress       |
    |   best sellers  |  Faded Short Sleeve T-shirts |
    |   best sellers  |  Blouse                      |
    |   best sellers  |  Printed Summer Dress        |
    |   best sellers  |  Printed Dress               |
    |   best sellers  |  Printed Summer Dress 2      |
    |   best sellers  |  Printed Dress 2             |
      


    