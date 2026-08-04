*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/page_objects/login_page.resource
Resource    ../resources/page_objects/inventory_page.resource
Resource    ../resources/page_objects/checkout_page.resource

Test Setup       Open SauceDemo
Test Teardown    Close SauceDemo

*** Test Cases ***
User Can Complete End To End Purchase
    Login As    standard_user    secret_sauce
    
    Add Item To Cart    css:[data-test="add-to-cart-sauce-labs-backpack"]
    Click Element       css:.shopping_cart_link
    
    Click Button        id:checkout
    Fill Checkout Information    Genaro    Tester    12345
    Complete Checkout
    
    ${confirmation}=    Get Order Confirmation Message
    Should Be Equal As Strings    ${confirmation}    Thank you for your order!

