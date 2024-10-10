*** Settings ***
Resource    ../import.robot


*** Keywords ***
Click Icon For Register Or Login
    SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.Icon_for_register_or_login}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${home_locator.Icon_for_register_or_login} 



Input Keyword For Search
    [Arguments]    ${type_product}   
    SeleniumLibrary.Wait Until Element Is Visible      ${home_locator.input_text}  ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${home_locator.input_text}     ${type_product} 


Button Search
    SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.element_search}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${home_locator.element_search}



Add Product Into Cart
    SeleniumLibrary.Wait Until Page Contains Element    ${home_locator.select_product}     ${GLOBAL_TIMOUT}
    ${elements}=    Get Webelements    ${home_locator.select_product} 
    ${first_element}=    Set Variable    ${elements}[0]
    SeleniumLibrary.Click Element    ${first_element}



Click Button Sign Up
    SeleniumLibrary.Wait Until Element Is Enabled  ${home_locator.button_signup}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Button     ${home_locator.button_signup}  





