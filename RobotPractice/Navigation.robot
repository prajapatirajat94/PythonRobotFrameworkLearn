*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.google.com/
${url2}    https://demo.nopcommerce.com/login


*** Test Cases ***
BrowserKewordTestcase
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    ${LOC}=    Get Location
    Log To Console    ${LOC}


    Go To    ${url2}
    ${LOC2}=    Get Location
    Log To Console    ${LOC2}
    Go Back



*** Keywords ***
