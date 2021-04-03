*** Settings ***
Library         ../lib/senhaGen.py
Resource        ../resources/base.robot
Resource        ../resources/dadosUsuario.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Criando uma nova conta

    Click Element                   class:login
    Page Should Contain             Authentication

    Input Text                      id:email_create             ${email}
    Click Element                   id:SubmitCreate
    Sleep                           5s                          Esperar a página mudar

    Page Should Contain             Your personal information
    Select Radio Button             id_gender                   id_gender1
    Input Text                      id:customer_firstname       ${primeiro_nome}
    Input Text                      id:customer_lastname        ${ultimo_nome}
    ${valor_email}                  Get Value                   id:email    
    Should Be Equal                 ${valor_email}              ${email}
    Input Text                      id:passwd                   ${senha}
    Select From List By Value       id:days                     6
    Select From List By Value       id:months                   7
    Select From List By Value       id:years                    1989
    Select Checkbox                 id:optin

    Input Text                      id:address1                 Rua Jair Ferreira, 260
    Input Text                      id:city                     Orlando
    Select From List By Label       id:id_state                 Florida
    Input Text                      id:postcode                 32808
    Input Text                      id:phone_mobile             (35) 98885-8858
    Click Element                   id:submitAccount

    Page Should Contain             My account