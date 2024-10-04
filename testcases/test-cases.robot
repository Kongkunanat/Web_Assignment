***Settings***
Resource    ../keywords/import.robot

# Test Teardown       Clear all browser


***Test Cases***
TC-001  
    common.Open Doppio Browser
    home_feature.Sign up
    register_page.Input Data For Sign Up    ${TC001.email_register}        ${TC001.password_register}        ${TC001.password_register} 
    home_page.Click Icon For Register Or Login
    account_page.Logout 


TC-002
    common.Open Doppio Browser
    home_page.Click Icon For Register Or Login
    login_page.Login with the registered account   ${TC002.email_register}     ${TC002.password_register}   
    home_feature.Select and add product into cart
    product_detail_page.Increase or Reduce Product
    delivery_info_page.Fill Delivery info field
    payment_select_page.Select Payment Method
    payment_credit_page.Purchase the product with credit card     ${TC002.card_number}    ${TC002.EXP}    ${TC002.CVC}    ${TC002.CardOwner}  
    home_page.Click Icon For Register Or Login
    account_page.The order should be created checked







