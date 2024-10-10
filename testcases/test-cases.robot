***Settings***
Resource    ../keywords/import.robot


Test Setup    Common.Open Doppio Browser
Test Teardown       Common.Close all browser



***Test Cases***
TC-001  
    home_feature.Click For Sign up
    register_feature.Sign up    ${email_password.email_register}        ${email_password.password_register}        ${email_password.password_register}
    home_feature.Select Product       ${search_product.type}   
    product_detail_feature.Add To Cart
    delivery_info_feature.Pay method    ${profile.name}   ${profile.surname}    ${profile.address}    ${profile.telephone} 
    payment_select_feature.Select Method
    payment_credit_feature.Payment Credit  ${credit_card.card_number}    ${credit_card.EXP}    ${credit_card.CVC}    ${credit_card.CardOwner} 
    home_page.Click Icon For Register Or Login
    account_page.The order should be created checked









