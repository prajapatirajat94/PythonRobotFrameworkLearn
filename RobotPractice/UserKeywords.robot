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
    ${pagetitle}=    Launcherbrowser    ${url}    ${browser}
    Log To Console    ${pagetitle}
    Input Text    //input[@id='Email']    Prajapati@gmail.com
    Input Text    //input[@id='Password']    ABC@123





