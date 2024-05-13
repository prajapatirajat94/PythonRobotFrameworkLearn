*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.guru99.com/test/simple_context_menu.html
${browser}    chrome

*** Test Cases ***
MouseOpRtestcase
    Set Selenium Speed    3
    Open Browser    ${url}    ${browser}
    #Right clikc we have to use below method
    Open Context Menu    //span[@class='context-menu-one btn btn-neutral']
    Click Element    //li[@class='context-menu-item context-menu-icon context-menu-icon-edit']
    Handle Alert    ACCEPT
    Double Click Element    //button[normalize-space()='Double-Click Me To See Alert']
    Handle Alert    Accept




*** Keywords ***
