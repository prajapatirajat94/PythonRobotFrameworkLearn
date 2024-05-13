*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
WAitforSeconds
    [Arguments]    ${i}
    Set Selenium Speed    ${i}