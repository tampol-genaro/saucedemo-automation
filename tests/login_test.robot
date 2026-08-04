*** Settings ***
Resource    ../resources/page_objects/login_page.resource

*** Test Cases ***
Valid Login Shows Inventory Page
    Open SauceDemo
    Login As    standard_user    secret_sauce
    Wait Until Page Contains    Products
    Close SauceDemo

Invalid Password Shows Error Message
    Open SauceDemo
    Login As    standard_user    wrong_password
    Wait Until Page Contains    do not match
    Close SauceDemo
