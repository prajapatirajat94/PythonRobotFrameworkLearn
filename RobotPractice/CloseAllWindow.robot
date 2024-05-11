*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/login
${url2}    https://naveenautomationlabs.com/opencart/index.php?route=account/login

*** Test Cases ***
Mytestcase
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window

#    Close Browser
    Close All Browsers



*** Keywords ***
