*** Settings ***
Documentation   Page Object in Robot Framework
Library    SeleniumLibrary
Resource   ../Resources/PageObject/KeyWordDefinationFiles/FormulairePage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/Common.robot
Variables   ../Resources/PageObject/Variable/Variable.py


*** Test Cases ***

[Documentation]

        setup     ${url3}     ${browser}
        Je saisis Fist Name et Last Name
        Je saisis Email
