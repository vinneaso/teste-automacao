*** Settings ***
Library         ../lib/senhaGen.py
Resource        ../resources/base.robot
Resource        ../resources/dadosUsuario.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Realizar compra na loja

    Click Element                   class:login
    Page Should Contain             Authentication

    Input Text                      id:email                        ${email}    
    Input Text                      id:passwd                       ${senha}
    Click Element                   id:SubmitLogin
    Page Should Contain             My account

    Click Element                   xpath://*[@id="block_top_menu"]/ul/li[2]/a
    Page Should Contain             Dresses

    Click Element                   xpath://*[@id="subcategories"]/ul/li[2]/div[1]/a
    Page Should Contain             Evening Dresses

    Click Element                   css:a[class='product_img_link']
    Page Should Contain             Printed Dress

    Click Element                   id:new_comment_tab_btn
    Sleep                           3s                          Esperar a modal abrir

    Click Element                   css:a[title='5']
    Input Text                      id:comment_title            Ótimo vestido
    Input Text                      id:content                  Tecido macio, leve, exatamente como na foto. Ótimo vestido

    Click Element                   id:submitNewMessage
    Sleep                           3s                          Esperar enviar o comentário

    Page Should Contain             Your comment has been added and will be available once approved by a moderator