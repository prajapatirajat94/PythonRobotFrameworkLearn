*** Settings ***
Library    SeleniumLibrary
Suite Setup    OpeningBrowser    ${url}    ${browser}
Suite Teardown    ClosingBrowser
Test Template    EnteringUSernameandPassword
Resource    ../Resources/ParameterizeResource.robot

*** Variables ***
${url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}    chrome


*** Test Cases ***    enteruser    enterpass
Entering username and password for TC1    ABC@gmail.com    ABC
Entering username and password for TC2    DEF@gmail.com    ABC
Entering username and password for TC3    GHI@gmail.com    ABC
Entering username and password for TC4    JKL@gmail.com    ${EMPTY}




*** Keywords ***

EnteringUSernameandPassword
    [Arguments]    ${enterusername}    ${EnterPassword}
    Input Text    //input[@id='Email']    ${enterusername}
    Input Text    //input[@id='Password']    ${EnterPassword}
    ClickonLoginbutton
    VerifyingErrorMessage
    Go To    ${url}

    