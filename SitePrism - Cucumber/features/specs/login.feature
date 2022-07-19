#language: pt
@regression
@login

Funcionalidade: Login
  Como um usuário do site e-commerce "Automation Practice" 
  Quero poder realizar um Login
  Para realizar compras

  Contexto: 
  Dado que esteja na Home 

 @verificacao_login
  Esquema do Cenário: Realizar um login
    Quando o usuário realizar Sign In com "<e-mail" e "<password>" existentes
    Então o usuário visualizará um modal com mensagem "<msg>"

    Exemplos:
    |   <e-mail   | <password>|       <msg>               |
    | teste@gm.com|   12345   | Authentication failed.    |
    | teste@12.br |   123456  | Authentication failed.    |
    |             |   123456  | An email address required.|
    | teste@gm.com|           | Password is required.     |
    | teste@gm.com|   123456  |                           | 


  
                                                                  

