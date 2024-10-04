*** Settings ***
Resource    ../import.robot


*** Keywords ***
Fill Delivery info field


    Wait Until Page Contains Element  ${delivery_locator.Icon_cart}     10s
    Click Element    ${delivery_locator.Icon_cart} 


    Wait Until Element Is Visible     ${delivery_locator.load_data}       30s
    Input Text    ${delivery_locator.name}   ${TC002.name} 

    Wait Until Element Is Visible      ${delivery_locator.surname}   15s
    Input Text    ${delivery_locator.surname}   ${TC002.surname}

    Wait Until Element Is Visible    ${delivery_locator.address}     10s
    Input Text   ${delivery_locator.address}    ${TC002.address} 

    Wait Until Element Is Visible    ${delivery_locator.phone}     10s
    Input Text    ${delivery_locator.phone}    ${TC002.telephone}

    Wait Until Page Contains Element    ${delivery_locator.pay_button}      10s
    Click Element    ${delivery_locator.pay_button}  





