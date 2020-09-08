*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Should Check Page Title
    Title Should Be     Training Wheels Protocol