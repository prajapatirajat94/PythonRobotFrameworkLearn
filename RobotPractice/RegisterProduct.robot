*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Registerusertest
    #Set Selenium Speed    0.5
    Open Browser    https://demo.nopcommerce.com/register    chrome
    Maximize Browser Window
    Select Radio Button    Gender    M
    Input Text    //input[@id='FirstName']    Rajat
    Input Text    //input[@id='LastName']    prajapati
    Select From List By Value    //select[@name='DateOfBirthDay']    10
    Select From List By Value    //select[@name='DateOfBirthMonth']    6
    Select From List By Value    //select[@name='DateOfBirthYear']    1990
    Input Text    //input[@id='Email']    ABCD@gmail.com
    Input Text    //input[@id='Password']    ABC1234
    Input Text    //input[@id='ConfirmPassword']    ABC1234
    Click Button    //button[@id='register-button']
    Sleep    1

