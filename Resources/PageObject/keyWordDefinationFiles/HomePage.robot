*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py


*** Keywords ***
Verify Welcom Text is visible
    Element should be visible    ${WelcomeText}    [timeout]=5

Logout
    set selenium timeout    20
    click element    ${WelcomeText}
    wait until element is visible    ${LogOutButton}
    click element  ${LogOutButton}

