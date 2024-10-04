*** Settings ***
Resource    ../import.robot


*** Keywords ***

Purchase the product with credit card
    [Arguments]    ${CardNumber}   ${EXP}    ${CVC}    ${CardOwner} 
    Wait Until Page Contains Element     ${payment_credit_locator.input_number}      20s
    ${CardNumberNoSpace}=    Remove String    ${CardNumber}    ${SPACE}
    Input Text      ${payment_credit_locator.input_number}       ${CardNumberNoSpace}


    Wait Until Page Contains Element     ${payment_credit_locator.input_exp}      20s
    Input Text      ${payment_credit_locator.input_exp}       ${EXP}

    Wait Until Page Contains Element     ${payment_credit_locator.input_cvc}      20s
    Input Text     ${payment_credit_locator.input_cvc}        ${CVC}

    Wait Until Page Contains Element     ${payment_credit_locator.input_basic_owner}      20s
    Input Text      ${payment_credit_locator.input_basic_owner}      ${CardOwner}


    Wait Until Page Contains Element     ${payment_credit_locator.confirm_button}  10s
    Click Element    ${payment_credit_locator.confirm_button} 


    Wait Until Element Is Visible      ${payment_credit_locator.button_ok}      14s
    Click Element    ${payment_credit_locator.button_ok}   


