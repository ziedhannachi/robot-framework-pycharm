*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py


*** Keywords ***

Je saisis Fist Name et Last Name

       input text    ${FisrtNameInputBox}    ${FirstName}
       wait until element is visible   ${FisrtNameInputBox}
       ${TEST}    get element attribute     ${FisrtNameInputBox}    value
        Should Be Equal As Strings    ${TEST}     ${FirstName}


       input text    ${LastNameInputBox}     ${LastName}
       wait until element is visible    ${LastNameInputBox}
       ${TEST}    get element attribute     ${LastNameInputBox}    value
        Should Be Equal As Strings    ${TEST}     ${LastName}

Je saisis Email
       input text    ${EmailInputBox}    ${Email}
       wait until element is visible    ${EmailInputBox}
       ${TEST}    get element attribute     ${EmailInputBox}    value
        should contain     ${TEST}    @




      #select radio button    ${RadioName}    ${RadioBoxFemale}


       input text    ${MobileInputBox}     ${Mobile}
       ${TEST}    get element count    ${MobileInputBox}

       if (${TEST} = 10){
       
       }





