*** Settings ***
Resource    ../import.robot


*** Keywords ***

Increase or Reduce Product
    SeleniumLibrary.Wait Until Page Contains Element    ${product_datail_locator.increase_or_reduce}     ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${product_datail_locator.increase_or_reduce} 

    SeleniumLibrary.Wait Until Element Is Visible      ${product_datail_locator.notice}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${product_datail_locator.notice}  






