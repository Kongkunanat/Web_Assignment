*** Settings ***
Resource    ../import.robot


*** Keywords ***
Pay method
    [Arguments]    ${name}        ${surname}        ${address}     ${telephone} 
    delivery_info_page.Input Fill Delivery info field   ${name}   ${surname}    ${address}    ${telephone} 
    delivery_info_page.Button Pay