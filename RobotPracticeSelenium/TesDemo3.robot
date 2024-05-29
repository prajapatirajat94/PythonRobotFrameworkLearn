*** Settings ***
Library    SeleniumLibrary
Library    Collections


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
    #as per below we can create list @{List} and when you want to use 
    # ${List} use it
    @{expectedList} =    Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry

    ${count}    Get Length    ${expectedList}
    Log To Console    ${count}
    ${elements}    Get WebElements     css:.card-title
    @{ActualList}    Create List    
    #FOR loop we can use below another way we can see in TestDemo4
    FOR  ${element}    IN    @{elements}
        Log To Console    ${element.text}
        Append To List    ${ActualList}    ${element.text}
        
    END
    Lists Should Be Equal    ${expectedList}    ${ActualList}
