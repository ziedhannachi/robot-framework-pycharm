*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Input Username
    input text    ${LoginUsernameInputBox}      ${Username}

Input password
    input text    ${LoginPasswordInputBox}      ${Password}

Click login
    click element  ${LoginButton}