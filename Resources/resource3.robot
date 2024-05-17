*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/login
${user_name}    ABCD@gmail.com
${pass_word}    ABC1234
${Expected_welcometext}    Welcome to our store
${expected_ele_}    //h2[normalize-space()='Welcome to our store']

*** Keywords ***
open the browser with practice app url
    Set Selenium Speed    0.5
    Open Browser    ${url}    chrome
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