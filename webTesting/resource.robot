*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://automationexercise.com/products

*** Keywords ***
Acessar a página home do site da loja
    Open Browser    url=${URL}  browser=${BROWSER}

Digitar o produto "${PRODUTO}" na pesquisa
    Input Text    id=search_product    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    id=submit_search

Conferir se o produto "${PRODUTO}" é exibido corretamente
    Wait Until Element Is Visible    xpath=/html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[1]/img

Fechar o navegador
    Close Browser