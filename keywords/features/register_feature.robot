*** Settings ***
Resource    ../import.robot


*** Keywords ***
Sign up
    [Arguments]    ${email_register}        ${password_register}        ${password_register} 
    register_page.Input Data For Sign Up    ${email_register}        ${password_register}        ${password_register} 
    register_page.ฺButton Sign Up
    register_page.Button Ok




