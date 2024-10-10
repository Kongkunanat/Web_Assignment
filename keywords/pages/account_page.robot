*** Settings ***
Resource    ../import.robot


*** Keywords ***
The order should be created checked
    ${result}=    Run Keyword And Return Status       Wait Until Page Contains Element    ${account_locator.find_table}     ${GLOBAL_TIMOUT}
    # Log To Console    ${result}
    Run Keyword If    ${result}    Log To Console    The order  should be created
    ...    ELSE    Log To Console    The order  not should be created
    
    




