*** Settings ***
Resource    ../common.resource

*** Keywords ***
Login As
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    id:user-name    timeout=10s
    Input Text      id:user-name    ${username}
    Input Text      id:password     ${password}
    Click Button    id:login-button
