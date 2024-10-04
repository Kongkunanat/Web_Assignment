*** Settings ***
Resource    ../import.robot


*** Keywords ***
Click Icon For Register Or Login
    Wait Until Page Contains Element  ${home_locator.Icon_for_register_or_login}      7s
    Click Element    ${home_locator.Icon_for_register_or_login} 


Search Product By Keyword
    Wait Until Element Is Visible      ${home_locator.input_text}  20s
    Input Text    ${home_locator.input_text}     ${TC002.search_product} 

    Wait Until Page Contains Element  ${home_locator.element_serch}    20s
    Click Element    ${home_locator.element_serch}



Add Product Into Cart
    Wait Until Page Contains Element    ${home_locator.select_product}     20s
    ${elements}=    Get Webelements    ${home_locator.select_product} 
    ${first_element}=    Set Variable    ${elements}[0]
    Click Element    ${first_element}



Click Button Sign Up
    Wait Until Element Is Enabled  ${home_locator.button_signup}    7s
    Click Button     ${home_locator.button_signup}  





