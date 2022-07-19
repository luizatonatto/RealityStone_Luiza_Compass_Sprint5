 #language: pt

@regression
@cadastro
Funcionalidade: Cadastro
  Como um usuário do site e-commerce "Automation Practice" 
  Quero poder acessar a página de Login
  Para fazer um cadastro
  E realizar compras

  Contexto: Estar no Login 
  Dado que esteja na página de login do site e-commerce "Automation Practice" 

  @validacao_email
  Cenário: Realizar um cadastro 
    Quando realizar um cadastro na página de Login 
    E preencher o campo de e-mail corretamente
    Então o e-mail deverá ser aceito

  @validacao_cadastro
  Cenário: Realizar um cadastro 
    Dado que o usuário cadastrou um e-mail com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    E forem cadastrados os dados: "<nome>" "<sobrenome>" "<email>" "<senha>"  "<endereco>" "<cidade>" "<pais>" "<estado>" "<zipcode>" "<telefone>" 
    Então uma mensagem será exibida "<msg>"
      
  @validacao_cadastro_via_checkout
  Cenário: Realizar um cadastro pelo Checkout
    Dado que o usuário tenha um produto na página de Checkout 
    E que o e-mail foi cadastrado com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    E forem cadastrados os dados:  "<nome>" "<sobrenome>" "<email>" "<senha>" "<endereco>" "<cidade>" "<pais>" "<estado>" "<zipcode>" "<telefone>" 
    Então uma mensagem será exibida "<msg>"
 
 
 Exemplos:
 
 |<nome>      |<sobrenome>| <email>    |<senha>   |<endereco> |<cidade>| <pais>       |<estado>|<zipcode>| <telefone>    | <msg>                                                                                     |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   | firstname is required.                                                                       |
 |            |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   | lastname is required.                                                                      |
 |    julia   |           |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   | email is required.                                                                   |
 |    julia   |  silva    |            |  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   | passwd is required.                                                                        |
 |    julia   |  silva    |teste@gm.com|          |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   | address1 is required.                                                                        |
 |    julia   |  silva    |teste@gm.com|  123456  |           | marau  |united estados| hawaii |  00000  | 88888888888   | cidade is required                                                                            |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      |        |united estados| hawaii |  00000  | 88888888888   | This pais requires you to choose a estado.                                                                    |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |              | hawaii |  00000  | 88888888888   | The Zip/Postal code you've entered is invalid. It must follow this format: 00000                                                                             |   
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados|        |  00000  | 88888888888   | id_pais is required                                               |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |         | 88888888888   | not obrigatory                                                |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  |               |                                                                        | 
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   |                                                                             |
 |    julia   |  silva    |teste@gm.com|  123456  |  rua      | marau  |united estados| hawaii |  00000  | 88888888888   |  Welcome to your account. Here you can manage all of your personal information and orders.|