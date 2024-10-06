*** Settings ***
Resource    ../import.robot


*** Keywords ***

Input credit card
    [Arguments]    ${CardNumber}   ${EXP}    ${CVC}    ${CardOwner} 
    SeleniumLibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_number}      ${GLOBAL_TIMOUT}
    ${CardNumberNoSpace}=    Remove String    ${CardNumber}    ${SPACE}
    SeleniumLibrary.Input Text      ${payment_credit_locator.input_number}       ${CardNumberNoSpace}


    SeleniumLibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_exp}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text      ${payment_credit_locator.input_exp}       ${EXP}

    SeleniumLibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_cvc}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text     ${payment_credit_locator.input_cvc}        ${CVC}

    SeleniumLibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_basic_owner}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text      ${payment_credit_locator.input_basic_owner}      ${CardOwner}


Button Confirm
    SeleniumLibrary.Wait Until Page Contains Element     ${payment_credit_locator.confirm_button}  ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${payment_credit_locator.confirm_button} 


Button Ok
    SeleniumLibrary.Wait Until Element Is Visible      ${payment_credit_locator.button_ok}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${payment_credit_locator.button_ok}   


