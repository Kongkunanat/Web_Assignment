*** Settings ***
Resource    ../import.robot

*** Keywords ***
Payment Credit
    [Arguments]    ${card_number}     ${EXP}     ${CVC}     ${CardOwner} 
    payment_credit_page.Input credit card    ${card_number}    ${EXP}    ${CVC}    ${CardOwner} 
    payment_credit_page.Button Confirm 
    common.Confirm On Dialog



