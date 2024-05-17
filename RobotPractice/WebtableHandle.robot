*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
WebtableTestcase
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${row}=    Get Element Count    //table[@name='BookTable']/tbody/tr/td[2]
    ${column}=    Get Element Count    //table[@name='BookTable']/tbody/tr/th
    
    Log To Console    ${row}
    Log To Console    ${column}

    ${text}=    Get Text    //table[@name='BookTable']/tbody/tr[2]/td[1]
    Log To Console    ${text}

    Table Column Should Contain    //table[@name='BookTable']    2    Author
    Table Row Should Contain    //table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain    //table[@name='BookTable']    3    2    Mukesh
    Table Header Should Contain    //table[@name='BookTable']    Author



*** Keywords ***
