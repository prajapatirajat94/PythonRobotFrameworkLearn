*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***
SwitchwindowTestcase
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window



    Open Browser    https://www.google.com/    ${browser}
    Maximize Browser Window

    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    ${title1}

    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    ${title2}

    Close All Browsers





*** Keywords ***
