*** Settings ***
Resource    ../import.robot


*** Keywords ***

Input Data For Sign Up
    [Arguments]    ${email}   ${password}  ${password_confirm}  
    SeleniumLibrary.Input Text    ${register_locator.email}      ${email}
    SeleniumLibrary.Input Text    ${register_locator.password}      ${password}  
    SeleniumLibrary.Input Text    ${register_locator.confirm_password}       ${password_confirm}  


ฺButton Sign Up
    SeleniumLibrary.Click Button     ${register_locator.button_signup} 



Button Ok
    SeleniumLibrary.Wait Until Element Is Enabled    ${register_locator.button_Ok}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Button     ${register_locator.button_Ok} 

