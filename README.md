# CHALLENGE 5
<div id="top"></div>

## ✨ Sobre o projeto
Repositório da Sprint 5 Tech da trilha RealityStone - Compass

Esse repositório contém arquivos desenvolvidos ao longo de duas semanas [05/07/22 - 19/07/22], durante o processo de apredizagem e a realização da Sprint 5. Portanto, estão presentes nele: 

* Arquivo de BDD's do site [Automation Practice](http://automationpractice.com/)🗸

* O arquivo Capybara - Cucumber 🗸

* O arquivo SitePrism - Cucumber  🗸

* O arquivo Automation Practice com os Gherkins e Ruby 🗸

* O Mapa Mental prioritário  🗸

* Vídeos com a automação completa 🗸


## Pré - Requisitos

Frameworks e Bibliotecas necessárias durante o processo:

* [VsCode](https://code.visualstudio.com/)
* [Ruby25x64](https://rubyinstaller.org/downloads/)
* [CMDER](https://cmder.net/)
* [GitHub](https://github.com/)
* [Gherkins](https://automationpanda.com/2017/01/26/bdd-101-the-gherkin-language/)
* [Cucumber](https://github.com/cucumber/cucumber-ruby)
* [Capybara](https://github.com/teamcapybara/capybara)
* [SitePrism](https://github.com/site-prism/site_prism)
* [Selenium WebDriver](https://github.com/SeleniumHQ/selenium)
* [Chromedriver](https://chromedriver.chromium.org/downloads)

* Gems:
 ```sh
> require 'cucumber'
> require 'capybara'
> require 'capybara/cucumber'
> require 'site_prism'
> require 'selenium-webdriver'
> require 'rspec'
> require 'pry'
> require 'faker'
> require 'i18n'
```


## 💻 Instalação 

1. Instale o CMDER 


2. Execute os seguintes comandos para instalar as gems:
   ```sh
   bundle install
   ```
   
3. Depois execute esse comando para verificar se as gem's foram instaladas com sucesso:

   ```js
   gem list bundler ruby-debug-ide
   ```
   
 4. No VsCode, baixe as extensões (após baixadas reinicie o programa):
   
    > Ruby
    > 
    > Snippets and Syntax Highlight for Gherkin (Cucumber)
    > 
    > Gherkin Indent
    > 
    > EditorConfig
    > 
    > Ruby Solargraph
    > 
    > Material Icon Theme


* Após isso, você poderá criar seus Gherkins do modo que achar melhor.


## Conteúdo Gherkins 📁

* Validação de Cadastro

* Validação de Login

* Validação de Search

* Validação de Página do Produto

* Validção de Payment


## Comandos

* Para executar os Gherkins individuais da automação:

   ```sh
  cucumber -p default -t@nome_da_tag_do_arquivo_feature
   ```
  
* Para gerar reports (colocar na pasta Gemfile):

   ```sh
  html: --format html --out=reports/report.html
   ```
  
* Depois rode todos os Gherkins juntos:

   ```sh
  cucumber
   ```

### Contribuidores

* 🧭[Compass](https://compass.uol/) 
* Tech da trilha RealityStone - Automação Web com Ruby e Cucumber
* Colegas: Matheus Maschio, Mateus Miri, Daniel, Carlos!


### Agradecimentos 💗

* Gostaria de agradecer aos meus colegas pela ajuda diária e retirada de dúvidas no Discord;

* A mim mesma pelo esforço e comprometimento com o aprendizado de automação.

### Autor

#### 📍 Luiza Tonatto


#### Contato

🔗 GitHub - https://github.com/luizatonatto]

🔗 LinkedIn - https://www.linkedin.com/in/luiza-basso-tonatto-b9636a236
