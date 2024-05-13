*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#here keywords with arguements where we are declring variable in [Arguments] and use it in testcase
launcherbrowser
    [Arguments]    ${appurl}    ${appbrowser}
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${Title}=    Get Title
    RETURN    ${Title}