*** Settings ***
Resource    ../import.robot


*** Keywords ***
Click For Sign up
    home_page.Click Icon For Register Or Login
    home_page.Click Button Sign Up


Select and add product into cart
    [Arguments]    ${type_product}   
    home_page.Search Product By Keyword    ${type_product}  
    home_page.Add Product Into Cart



