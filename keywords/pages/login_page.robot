*** Settings ***
Resource    ../import.robot


*** Keywords ***
Login with the registered account
    [Arguments]    ${email}    ${password}    
    Wait Until Element Is Visible      ${login_locator.email}  7s
    Input Text     ${login_locator.email}     ${email}
    Wait Until Element Is Visible    ${login_locator.password}      7s
    Input Text    ${login_locator.password}      ${password}   
    Wait Until Element Is Enabled      ${login_locator.submit}    10s
    Click Button     ${login_locator.submit}
    Wait Until Element Is Visible      ${login_locator.ok}    14s
    Click Element    ${login_locator.ok} 


