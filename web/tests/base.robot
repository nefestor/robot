*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${url}               https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessão
    Open Browser                    ${url}     chrome

Encerra sessão
    Close Browser