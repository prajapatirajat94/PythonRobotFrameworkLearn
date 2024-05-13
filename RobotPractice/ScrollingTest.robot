*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://www.seleniumeasy.com/selenium-tutorials/scrolling-web-page-with-selenium-webdriver-using-java
${browser}    chrome


*** Test Cases ***
ScrollTest
    Set Selenium Speed    1
    Open Browser    ${url}    ${browser}
    Set Selenium Implicit Wait    5
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0,1000)
    #Scroll Element Into View    //h2[normalize-space()='Comments']
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #end of page

    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)   #top of the page






*** Keywords ***
