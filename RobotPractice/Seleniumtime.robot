*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/login
${url2}    https://naveenautomationlabs.com/opencart/index.php?route=account/login
${emailxpath}    (//input[@type='email'])[1]
*** Test Cases ***
LoginTest
    Set Selenium Speed    1
    ${time}=    Get Selenium Timeout

    Log To Console    ${time}
    Set Selenium Implicit Wait    10
    openbrowser1

    Maximize Browser Window
    ${"email_text"}    Set Variable    Prajapati@gmail.com
    
    Input Text    ${emailxpath}    ${"email_text"}
    Close Browser
LoginTesttwo

    openBrowser2
    Maximize Browser Window
    Input Text    //input[@id='input-email']    Prajapati@gmail.com
    Input Text    //input[@id='input-password']    ABC@123
    Close Browser





*** Keywords ***
openbrowser1
    Open Browser    ${url}    ${browser}
openBrowser2
    Open Browser    ${url2}    ${browser}
