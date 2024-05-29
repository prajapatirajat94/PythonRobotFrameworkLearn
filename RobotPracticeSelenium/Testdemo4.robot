*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://rahulshettyacademy.com/angularpractice/shop


*** Test Cases ***
TestCase1
    open the browser with mortgage payment url
    Verified card title on shop page



*** Keywords ***
open the browser with mortgage payment url
    Set Selenium Speed    0.5
    Open Browser    ${url}    chrome
    Maximize Browser Window
Verified card title on shop page
    @{expectedList} =    Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry

    ${elements}    Get Webelements    //h4[@class='card-title']
    ${count}    Get Element Count    ${elements}
    Log To Console    ${count}
    FOR    ${i}    IN RANGE    1    ${count}
        ${linktext}=    Get Text    (//h4[@class='card-title'])[${i}]
        Log To Console    ${linktext}
    END