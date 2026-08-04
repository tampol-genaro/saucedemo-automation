*** Settings ***
Resource    ../common.resource

*** Keywords ***
Add Item To Cart
    [Arguments]    ${item_button_locator}
    Click Element    ${item_button_locator}

Get Cart Item Count
    ${count}=    Get Text    css:.shopping_cart_badge
    RETURN    ${count}
