*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Should Check Page Title
    Open Browser        https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should Be     Training Wheels Protocol
    Close Browser