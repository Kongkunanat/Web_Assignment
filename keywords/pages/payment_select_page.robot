*** Settings ***
Resource    ../import.robot


*** Keywords ***

Select Payment Method
    Wait Until Element Is Enabled    ${payment_select_locator.credit_card}       10s
    Click Button    ${payment_select_locator.credit_card}   

    Wait Until Page Contains Element  ${payment_select_locator.button_next}    10s
    Click Element    ${payment_select_locator.button_next} 


