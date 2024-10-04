*** Settings ***
Resource    ../import.robot


*** Keywords ***
The order should be created checked
    ${result}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${account_locator.find_table}     10s
    # Log To Console    ${result}
    Run Keyword If    ${result}    Log To Console    The order  should be created
    ...    ELSE    Log To Console    The order  not should be created
    
    

Logout    
    Wait Until Element Is Enabled    ${account_locator.button_logout} 
    Click Button     ${account_locator.button_logout} 





