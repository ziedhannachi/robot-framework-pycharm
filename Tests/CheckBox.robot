*** Settings ***
Documentation   Page Object in Robot Framework
Library    SeleniumLibrary
Resource   ../Resources/PageObject/KeyWordDefinationFiles/CheckBoxPages.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/HomePage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/Common.robot
Variables   ../Resources/PageObject/Variable/Variable.py


*** Test Cases ***
  [Documentation]

     setup     ${url2}     ${browser}
     Je selectionne selectbox