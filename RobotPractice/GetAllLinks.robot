*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/resource2.robot
*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
TESTLINK
    WAitforSeconds    0.5
    Open Browser    ${url}    ${browser}
    ${AllLinksCount}    Get Element Count    //a
    Log To Console    ${AllLinksCount}
    
    @{LinkItems}    Create List
    
    FOR    ${i}    IN RANGE    1    ${AllLinksCount}
        ${linktext}=    Get Text    (//a)[${i}]
        Run Keyword If    '${linktext}' != ''    Log To Console    ${linktext}

        END


*** Keywords ***
