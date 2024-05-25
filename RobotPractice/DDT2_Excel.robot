*** Settings ***
Library    SeleniumLibrary
#below is format to import excel file to in testcase
#Library    DataDriver         Location    sheet_name=Sheetname
Library    DataDriver    file=TestData/LoginData.xlsx    sheet_name=Sheet1

Resource    ../Resources/ParameterizeResource.robot
Suite Setup    OpeningBrowser    ${url}    ${browser}
Suite Teardown    ClosingBrowser
Test Template    EnteringUSernameandPassword

*** Variables ***
${url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}    chrome

*** Test Cases ***
LoginwithUsingexcel    ${username}    ${Password}





*** Keywords ***

EnteringUSernameandPassword
    #below ${username} and ${Password} should match with excel header
    [Arguments]    ${username}    ${Password}
    Input Text    //input[@id='Email']    ${username}
    Input Text    //input[@id='Password']    ${Password}
    ClickonLoginbutton
    VerifyingErrorMessage
    Go To    ${url}