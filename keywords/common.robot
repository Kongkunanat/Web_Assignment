*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Doppio Browser
    SeleniumLibrary.Open Browser    ${url}      gc


Close all browser
    SeleniumLibrary.Close All Browsers