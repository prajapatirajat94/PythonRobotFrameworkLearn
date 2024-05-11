*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
TestcaseAlert
    Set Selenium Speed    0.5
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Click Button    //button[normalize-space()='Alert']
    Sleep    3
#    Alert Should Be Present    I am an alert box!
    Handle Alert    Accept
    Click Button    //button[@onclick='myFunctionConfirm()']
    Handle Alert    Dismiss

#    Handle Alert    LEAVE




*** Keywords ***
