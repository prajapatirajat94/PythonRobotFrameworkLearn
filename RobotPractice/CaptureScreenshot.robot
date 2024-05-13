*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/login
${browser}    chrome

*** Test Cases ***
ScreenshotloginTestcase
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Input Text    //input[@id='Email']    Prajapati@gmail.com
    Input Text    //input[@id='Password']    ABC@123
    Capture Page Screenshot    SCRR.png




*** Keywords ***
