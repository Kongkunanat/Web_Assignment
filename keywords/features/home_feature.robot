*** Settings ***
Resource    ../import.robot


*** Keywords ***
Click For Sign up
    home_page.Click Icon For Register Or Login
    home_page.Click Button Sign Up


Select Product
    [Arguments]    ${type_product}   
    home_page.Input Keyword For Search       ${search_product.type}  
    home_page.Button Search
    home_page.Add Product Into Cart



