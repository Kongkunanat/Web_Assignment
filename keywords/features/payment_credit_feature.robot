*** Settings ***
Resource    ../import.robot


*** Keywords ***
Payment Credit
    [Arguments]    ${card_number}     ${EXP}     ${CVC}     ${CardOwner} 
    payment_credit_page.Input credit card    ${card_number}    ${EXP}    ${CVC}    ${CardOwner} 
    payment_credit_page.Button Confirm 
    payment_credit_page.Button Ok



