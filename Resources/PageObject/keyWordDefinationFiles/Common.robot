*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
setup
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}   ${browser}
    maximize browser window

tearDown
     close browser
