
*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Tiago
    Should Be Equal     ${result}   Olá Tiago, Bem vindo ao curso básico de Robot Framework!