*** Settings ***
Library    SeleniumLibrary
#we are importing Keywords from Resource file
Resource    ../Resources/resource.robot

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/login

*** Test Cases ***
TC1
    #user define keyword without arguements
    Set Selenium Speed    1
    ${Pagetitle}=    launcherbrowser    ${url}    ${browser}
    Log To Console    ${Pagetitle}
    Input Text    //input[@id='Email']    Prajapati@gmail.com
    Input Text    //input[@id='Password']    ABC@123





