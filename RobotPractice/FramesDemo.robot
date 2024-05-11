*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
TestingFrame
    Open Browser
    #we can select one after another frame and once we done our action we have to unselect frame
    Select Frame    AddLocator    #id xpath name etc
    Unselect Frame
    #we can select one after another frame and once we done our action we have to unselect frame
    Select Frame    AddLocator    #id xpath name etc
    Unselect Frame



*** Keywords ***
