*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    
${browser}    chrome

*** Test Cases ***
#ForLoop1
#    FOR    ${i}    IN RANGE    0    10
#    Log To Console    ${i}
#    END

#ForLoop2
#    FOR    ${i}    IN    1  2  3  4  5  6  7  8  9
#        Log To Console    ${i}
#        END

#ForLoopWithList3
#    below this way we can create list
#    @{items}    Create List    1    2    3    4    5    6
#    FOR    ${i}    IN    @{items}
#        Log To Console    ${i}
#        END

#ForLoopWithString4
#    FOR    ${i}    IN    Rajat    Kamal    ABC    DEF
#        Log To Console    ${i}
#        END
 
#ForLoopWithStringList5
#    @{namelist}    Create List    Rajat    Kamal    ABC    DEF
#    FOR    ${i}    IN     @{namelist}
#        Log To Console    ${i}
#        END

ForLoopWithExit6
    @{items}    Create List    1    2    3    4    5    6
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
        END


*** Keywords ***
