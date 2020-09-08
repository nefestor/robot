*** Settings ***
Library     SeleniumLibrary

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variable ***
${url}               https://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID

    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Marcando opção com CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Close Browser

Marcando opção com Xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    

*** Keywords ***
Nova sessão
    Open Browser                    ${url}     chrome

Encerra sessão
    Close Browser