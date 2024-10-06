*** Settings ***
Resource    ../import.robot


*** Keywords ***
Login
    [Arguments]    ${email_register}     ${password_register} 
    login_page.input with the registered account  ${email_register}     ${password_register} 
    login_page.Button Submit  
    login_page.Button Ok



