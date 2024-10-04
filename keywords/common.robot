*** Settings ***

Resource    ./import.robot
*** Keywords ***
Open Doppio Browser
    open Browser    ${url}      gc


Clear all browser
    Close All Browsers