*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    Go To                           ${url}/login
    Login With                      stark   jarvis!
    Should Contain Login Alert      Tony Stark

Login com senha inválida
    Go To                       ${url}/login
    Login With                  stark   123!
    ${message}=                 Get WebElement              id:flash
    Should Contain Login Alert  Senha é invalida!

Login com usuario inválido
    Go To                                   ${url}/login
    Login With                              teste   jarvis!
    ${message}=                             Get WebElement              id:flash
    Should Contain Login Alert              O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]             ${uname}    ${pass}
    Input Text              css:input[name=username]    ${uname}
    Input Text              css:input[name=password]    ${pass}
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]             ${expect_message}

    ${message}=             Get WebElement      id:flash
    Should Contain          ${message.text}     ${expect_message}

Should See Logged User
    [Arguments]             ${full_name}

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!