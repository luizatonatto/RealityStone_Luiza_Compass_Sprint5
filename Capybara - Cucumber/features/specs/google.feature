#language: pt

Funcionalidade: Google


Cenário: Carregar a página do google
    Dado que acesse a home 
    Então deverá exibir a logo do Google

Cenário: Buscar por Compass
    Dado que acesse a home
    Quando buscar por "Compass"
    Então deverão ser encontrados resultados
