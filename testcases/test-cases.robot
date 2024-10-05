***Settings***
Resource    ../keywords/import.robot


Test Setup    Common.Open Doppio Browser
Test Teardown       Common.Close all browser


***Test Cases***
TC-001  
    common.Open Doppio Browser
    home_feature.Click For Sign up
    register_page.Input Data For Sign Up    ${email_password.email_register}        ${email_password.password_register}        ${email_password.password_register} 
    home_page.Click Icon For Register Or Login
    account_page.Logout 


TC-002
    common.Open Doppio Browser
    home_page.Click Icon For Register Or Login
    login_page.Login with the registered account   ${email_password.email_register}     ${email_password.password_register}   
    home_feature.Select and add product into cart    ${search_product.type}  
    product_detail_page.Increase or Reduce Product
    delivery_info_page.Fill Delivery info field    ${profile.name}   ${profile.surname}    ${profile.address}    ${profile.telephone} 
    payment_select_page.Select Payment Method
    payment_credit_page.Purchase the product with credit card     ${credit_card.card_number}    ${credit_card.EXP}    ${credit_card.CVC}    ${credit_card.CardOwner}  
    home_page.Click Icon For Register Or Login
    account_page.The order should be created checked







