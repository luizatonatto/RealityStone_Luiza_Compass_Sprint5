#Language PT
@regression
@login

Funcionalidade: Login
  Como um usuário do site e-commerce "Automation Practice" 
  Quero poder acessar a página de Login
  Para fazer login
  E realizar compras

  Contexto: Estar na página Authentication
  Dado que o usuário tenha feito checkout da compra 
  E esteja na página Authentication, do site e-commerce "Automation Practice" 

  @login_via_checkout
  Cenário: Realizar um login
    Quando o usuário observar que está no step 02. Sign In
    E visualizar uma box com escrita ALREADY REGISTERED?
    Então ele deve realizar o login com "<e-mail" e "<password>" existentes
    E o usuário visualizará uma mensagem "<msg>"

    Exemplo:
    |   <e-mail   | <password>|       <msg>               |
    | teste@gm.com|   12345   | Authentication failed.    |
    | teste@12.br |   123456  | Authentication failed.    |
    |             |   123456  | An email address required.|
    | teste@gm.com|           | Password is required.     |
    | teste@gm.com|   123456  |                           | 


    @recuperacao_password_via_checkout
    Esquema do Cenário: Recuperar password por E-mail na página de checkout
    Quando o usuário observar que está no step 02. Sign In
    E clicar na funcionalidade "<funcionalidade>" da box 
    Então deverá preencher o requisito do "<e-mail adress>" para recuperar a Password
    E o usuário deverá visualizar a mensagem "<msg>"

      Exemplo:

      |  <funcionalidade>   |   <e-mail>    |                                <msg>                                                                              |
      |                     |               |                                                                                                                   |
      | Forgot My Password  |               | Invalid email address. Please enter the email address you used to register. We will then send you a new password. |                       
      | Forgot My Password  |  1234@not.br  | There is no account registered for this email address.                                                            |
      | Forgot My Password  |  teste@gm.com | A confirmation email has been sent to your address: teste@gm.com                                                  |



  Contexto: Estar no Login 
  Dado que esteja na página de login do site e-commerce "Automation Practice" 

    @verificacao_recuperacao_password
    Esquema do Cenário: Recuperar password por E-mail
      Dado que o usuário esteja na página de Login
      E clique na funcionalidade "<funcionalidade>" 
      Quando se redigir a página Authentication
      Então deverá preencher o requisito do "<e-mail adress>" para recuperar a Password
      E o usuário visualizará a mensagem "<msg>"

      Exemplo:

      |  <funcionalidade>   |   <e-mail>    |                                <msg>                                                                              |
      |                     |               |                                                                                                                   |
      | Forgot My Password  |               | Invalid email address. Please enter the email address you used to register. We will then send you a new password. |                                                                                                         
      | Forgot My Password  |  1234@not.br  | There is no account registered for this email address.                                                            |
      | Forgot My Password  |  teste@gm.com | A confirmation email has been sent to your address: teste@gm.com                                                  |

      @validacao_new_password
      Esquema do Cenário: Validar uma nova password
        Dado que o usuário esteja na página My Account
        Quando clicar na funcionalidade "<funcionalidade>" 
        E preencher os dados para validar uma nova Password: "<title>" "<first name>" "<last name>" "<e-mail>" 
        "<password>" "<new password>" "<confirmation>" "<date of birth>" 
        Então o usuário visualizará uma mensagem  "<msg>" 


       Exemplo: 
   
|      <funcionalidade>    |  <title>     |<first name>|<last name>| <e-mail>   |<password>|<new password|<confirmation>|<date of birth>|                   <msg>                                  |                                                                                                                   
|  MY PERSONAL INFORMATION |              |    julia   |  silva    |teste@gm.com|  12345   |  123456     |    123456    |  12/05/04     | not obrigatory                                           |                                          
|  MY PERSONAL INFORMATION |   mr/mrs     |            |  silva    |teste@gm.com|  12345   |  123456     |    123456    |  12/05/04     | firstname is required.                                   |
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |           |teste@gm.com|  12345   |  123456     |    123456    |  12/05/04     | lastname is required.                                    |                                                                                                                                                                                                                                               
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |            |  12345   |  123456     |    123456    |  12/05/04     | This email address is not valid                          |                                                                                                          
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |teste@gm.com|          |  123456     |    123456    |  12/05/04     | The password you entered is incorrect.                   |                                             
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |teste@gm.com|  12345   |             |    123456    |               | The password and confirmation do not match               |       
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |teste@gm.com|  12345   |  123456     |              |  12/05/04     | The password and confirmation do not match               |                                                         
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |teste@gm.com|  12345   |  123456     |    123456    |               | not obrigatory                                           |                           
|  MY PERSONAL INFORMATION |   mr/mrs     |    julia   |  silva    |teste@gm.com|  12345   |  123456     |    123456    |  12/05/04     | Your personal information has been successfully updated. |
                                                                  

