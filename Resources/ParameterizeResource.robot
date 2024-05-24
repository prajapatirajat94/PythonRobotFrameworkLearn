*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
OpeningBrowser
    [Arguments]    ${enterurl}    ${browsername}
    Set Selenium Speed    0.5
    Open Browser    ${enterurl}    ${browsername}
    Maximize Browser Window
VerifyingErrorMessage
    Page Should Contain    Login was unsuccessful
ClickonLoginbutton
    Click Button    //button[normalize-space()='Log in']
ClosingBrowser
    Sleep    1.5
    Close Browser