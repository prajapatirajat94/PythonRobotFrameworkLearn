*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
TESTLINK
    
    Open Browser    ${url}    ${browser}
    ${AllLinksCount}    Get Element Count    //a
    Log To Console    ${AllLinksCount}
    
    @{LinkItems}    Create List
    
    FOR    ${i}    IN RANGE    1    ${AllLinksCount}
        ${linktext}=    Get Text    (//a)[${i}]
        Log To Console    ${linktext}
        END


*** Keywords ***
