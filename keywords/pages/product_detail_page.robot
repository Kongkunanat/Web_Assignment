*** Settings ***
Resource    ../import.robot


*** Keywords ***

Add To Cart
    SeleniumLibrary.Wait Until Page Contains Element    ${product_datail_locator.button_add_to_cart}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${product_datail_locator.button_add_to_cart} 





