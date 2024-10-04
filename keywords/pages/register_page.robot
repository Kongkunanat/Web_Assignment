*** Settings ***
Resource    ../import.robot


*** Keywords ***

Input Data For Sign Up
    [Arguments]    ${email}   ${password}  ${password_confirm}  
    Input Text    ${register_locator.email}      ${email}
    Input Text    ${register_locator.password}      ${password}  
    Input Text    ${register_locator.confirm_password}       ${password_confirm}  

    Click Button     ${register_locator.button_signup} 
    Wait Until Element Is Enabled    ${register_locator.button_Ok}      7s
    Click Button     ${register_locator.button_Ok} 

