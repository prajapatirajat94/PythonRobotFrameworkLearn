*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***

TabbedWindowTestCase
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Click Button    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    #when we click on button it will open tabbed window which is child window
    #to switch window we can use title of window
    Switch Window    Selenium
    Click Element    //span[normalize-space()='Downloads']
    Switch Window    Frames & windows
    Click Element    //a[normalize-space()='Open New Seperate Windows']
    Close All Browsers







*** Keywords ***
