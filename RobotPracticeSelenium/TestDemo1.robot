*** Settings ***
Library    SeleniumLibrary
Test Setup    open the browser with practice app url
Test Teardown    closingbrowser



*** Variables ***
${Expected_welcometext}    Welcome to our store
${expected_ele_}    //h2[normalize-space()='Welcome to our store']


*** Test Cases ***
Login Test case1

    Fill name and email    ABCD@gmail.com    ABC1234
    wait and verify message


*** Keywords ***
open the browser with practice app url
    Set Selenium Speed    0.5
    Open Browser    https://demo.nopcommerce.com/login    chrome
    Maximize Browser Window

Fill name and email
    [Arguments]    ${username}    ${password}
    Input Text    //input[@id='Email']    ${username}
    Input Text    //input[@id='Password']    ${password}
    Click Button    //button[normalize-space()='Log in']

wait and verify message
    Wait Until Element Is Visible    ${expected_ele_}    3
    Element Text Should Be    ${expected_ele_}    ${Expected_welcometext}

closingbrowser
    Close Browser
