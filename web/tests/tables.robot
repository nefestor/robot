*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionando o valor ao informar da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors   1   $ 10.000.000

Selecionando o valor ao informar da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors   2   @vindiesel

Descobre a linha pelo texto chave e valida os demais valores
    Go To                               ${url}/tables
    ${target}=      Get WebElement      xpath:.//tr[contains(., '@vindiesel')]
    Log             ${target.text}
    Should Contain  ${target.text}      Domic Toreto
    Should Contain  ${target.text}      $ 10.000.000