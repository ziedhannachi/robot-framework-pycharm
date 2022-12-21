*** Settings ***
Documentation   Page Object in Robot Framework
Library    SeleniumLibrary
Resource   ../Resources/PageObject/KeyWordDefinationFiles/LoginPage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/HomePage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/Common.robot
Variables   ../Resources/PageObject/Variable/Variable.py


*** Test Cases ***
Verify Successful Login to OrngeHRM
    [Documentation]    this test case verifies that the user is able to login and logout to orangeHrm using PageObject
    #[Tags]     Smoke
    setup    ${url}     ${browser}
    Input Username
    Input password
    Click login
    Verify Welcom Text is visible
    Logout
    TearDown