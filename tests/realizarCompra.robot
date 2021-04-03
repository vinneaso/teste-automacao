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

    Click Element                   name:Submit
    Sleep                           5s                          Esperar a modal abrir
    Page Should Contain             Product successfully added to your shopping cart

    Click Element                   css:span[class='cross']
    Select From List By Label       id:group_1                      M
    Click Element                   name:Pink
    Click Element                   name:Submit
    Sleep                           5s                          Esperar a modal abrir
    Page Should Contain             Product successfully added to your shopping cart

    Click Element                   css:a[title='Proceed to checkout']
    Page Should Contain             Color : Beige, Size : S
    Page Should Contain             Color : Pink, Size : M

    Click Element                   xpath://*[@id="center_column"]/p[2]/a[1]
    Page Should Contain             Addresses
    Click Element                   name:processAddress
    Page Should Contain             Shipping

    Select Checkbox                 id:cgv
    Checkbox Should Be Selected     id:cgv
    Click Element                   name:processCarrier
    Page Should Contain             Please choose your payment method

    Click Element                   css:a[title='Pay by check.']
    Page Should Contain             Order summary
    Click Element                   xpath://*[@id="cart_navigation"]/button
    Page Should Contain             Order confirmation

    Click Element                   css:a[title='Back to orders']
    Page Should Contain             Order history

    Click Element                   xpath://*[@id="order-list"]/tbody/tr[1]/td[1]/a
    Sleep                           5s                          Esperar carregar a página
    Page Should Contain             Payment by check
    Page Should Contain             Color : Beige, Size : S
    Page Should Contain             Color : Pink, Size : M