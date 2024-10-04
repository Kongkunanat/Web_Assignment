*** Settings ***
Resource    ../import.robot


*** Keywords ***
Sign up
    home_page.Click Icon For Register Or Login
    home_page.Click Button Sign Up


Select and add product into cart
    home_page.Search Product By Keyword
    home_page.Add Product Into Cart



