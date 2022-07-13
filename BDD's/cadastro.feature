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
    E forem cadastrados os dados: "<title>" "<first name>" "<last name>" "<e-mail>" "<password>" "<date of birth>" "<adress>" "<city>" "<country>" "<state>" "<zipcode>" "<mobile phone>" "<company>"
    Então uma mensagem será exibida "<msg>"
      
  @validacao_cadastro_via_checkout
  Cenário: Realizar um cadastro pelo Checkout
    Dado que o usuário tenha um produto na página de Checkout 
    E que o e-mail foi cadastrado com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    E forem cadastrados os dados: "<title>" "<first name>" "<last name>" "<e-mail>" "<password>" "<date of birth>" "<adress>" "<city>" "<country>" "<state>" "<zipcode>" "<mobile phone>" "<company>"
    Então uma mensagem será exibida "<msg>"


    Exemplos:
    Cenário: preenchimento de dados
    |  <title>     |<first name>|<last name>| <e-mail>   |<password>|<date of birth>|<adress> | <city>| <country>   |<state>|<zipcode>| <mobile phone>|<company>| <msg>                                                                                    |
    |              |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | not obrigatory                                                                           |
    |   mr/mrs     |            |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | firstname is required.                                                                   |
    |   mr/mrs     |    julia   |           |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | lastname is required.                                                                    |
    |   mr/mrs     |    julia   |  silva    |            |  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | email is required.                                                                       |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|          |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | passwd is required.                                                                      |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |               |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | not obrigatory                                                                           |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |         | marau |united states| hawaii|  00000  | 88888888888   | compass | address1 is required.                                                                    |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    |       |united states| hawaii|  00000  | 88888888888   | compass | city is required                                                                         |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |             | hawaii|  00000  | 88888888888   | compass | id_country is required                                                                   | 
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states|       |  00000  | 88888888888   | compass | This country requires you to choose a State.                                             |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|         | 88888888888   | compass | The Zip/Postal code you've entered is invalid. It must follow this format: 00000         |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  |               | compass | not obrigatory                                                                           |
    |              |            |           | teste.com  |          |               |         |       |             |       |         |               | compass | Invalid email address.                                                                   |
    |   mr/mrs     |    julia   |  silva    |teste@gm.com|  123456  |   12/05/04    |  rua    | marau |united states| hawaii|  00000  | 88888888888   | compass | Welcome to your account. Here you can manage all of your personal information and orders.|
   


 
                               
