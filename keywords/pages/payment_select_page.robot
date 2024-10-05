*** Settings ***
Resource    ../import.robot


*** Keywords ***

Select Payment Method
    SeleniumLibrary.Wait Until Element Is Enabled    ${payment_select_locator.credit_card}       ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Button    ${payment_select_locator.credit_card}   

    SeleniumLibrary.Wait Until Page Contains Element  ${payment_select_locator.button_next}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${payment_select_locator.button_next} 


