*** Settings ***
Resource    ../import.robot


*** Keywords ***

Increase or Reduce Product
    Wait Until Page Contains Element    ${product_datail_locator.increase_or_reduce}     10s
    Click Element    ${product_datail_locator.increase_or_reduce} 

    Wait Until Element Is Visible      ${product_datail_locator.notice}      14s
    Click Element    ${product_datail_locator.notice}  






