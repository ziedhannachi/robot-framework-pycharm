*** Settings ***
Documentation   Page Object in Robot Framework
Library    SeleniumLibrary
Resource   ../Resources/PageObject/KeyWordDefinationFiles/AlertPage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/HomePage.robot
Resource   ../Resources/PageObject/KeyWordDefinationFiles/Common.robot
Variables   ../Resources/PageObject/Variable/Variable.py


*** Test Cases ***

[Documentation]


      setup     ${url1}     ${browser}
      J accepte alert
      Je clique sur le boutton et j accepte alert
      Je clique sur le boutton et j refuse alert
      Je saisis un text en alert
