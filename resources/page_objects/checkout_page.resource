*** Settings ***
Resource    ../common.resource

*** Keywords ***
Fill Checkout Information
    [Arguments]    ${first_name}    ${last_name}    ${zip_code}
    Wait Until Element Is Visible    id:first-name    timeout=10s
    Input Text      id:first-name    ${first_name}
    Input Text      id:last-name     ${last_name}
    Input Text      id:postal-code   ${zip_code}
    Click Button    id:continue

Complete Checkout
    Wait Until Element Is Visible    id:finish    timeout=10s
    Click Button    id:finish

Get Order Confirmation Message
    Wait Until Element Is Visible    css:.complete-header    timeout=10s
    ${message}=    Get Text          css:.complete-header
    RETURN         ${message}
