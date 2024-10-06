*** Settings ***
Resource    ../import.robot


*** Keywords ***
input with the registered account
    [Arguments]    ${email}    ${password}    
    SeleniumLibrary.Wait Until Element Is Visible      ${login_locator.email}  ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text     ${login_locator.email}     ${email}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.password}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${login_locator.password}      ${password}   

Button Submit
    SeleniumLibrary.Wait Until Element Is Enabled      ${login_locator.submit}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Button     ${login_locator.submit}

Button Ok
    SeleniumLibrary.Wait Until Element Is Visible      ${login_locator.ok}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${login_locator.ok} 


