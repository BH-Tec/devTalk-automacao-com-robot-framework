*** Settings ***
Documentation   Suite Exemplo WebTesting
Resource        resource.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar um produto no site
    Acessar a página home do site da loja
    Digitar o produto "blue top" na pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "blue top" é exibido corretamente
    Fechar o navegador