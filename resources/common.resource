*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com

*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    chrome

Close SauceDemo
    Close Browser
