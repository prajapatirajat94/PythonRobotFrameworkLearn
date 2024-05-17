*** Settings ***
Library    SeleniumLibrary
Test Setup    open the browser with practice app url
Test Teardown    closingbrowser
Resource    ../Resources/resource3.robot



*** Test Cases ***
Login Test case1

    Fill name and email    ${user_name}    ${pass_word}
    wait and verify message



