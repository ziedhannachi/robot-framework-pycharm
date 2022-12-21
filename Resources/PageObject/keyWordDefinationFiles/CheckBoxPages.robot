*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***


Je selectionne selectbox
     select checkbox    ${selectBox1}
     select checkbox    ${selectBox2}

Je selectionne radio button

