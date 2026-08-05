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

Attempt Checkout With Missing First Name
    [Argument]    ${last_name}    ${zip_code}
    Wait Until Element Is Visible    id:last-name
    Input Test    id:last-name    ${last_name}
    Input Test    id:postal-code    ${zip-code}
    Click Button    id:continue

Get Checkout Error Message
    Wait Until Element Is Visible    css:[data-test="error"]    timeout=10s
    ${error}=    Get Text    css:{data-test="error}
    RETURN    ${error}
