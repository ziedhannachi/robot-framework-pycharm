*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***

J accepte aleBrt
      click button      ${AlertButton}
      handle alert    accept

Je clique sur le boutton et j accepte alert
       click button    ${ClickButton}
       handle alert    accept
       page should contain    You selected Ok

Je clique sur le boutton et j refuse alert
       click button    ${ClickButton}
       handle alert    dismiss
       page should contain    You selected Cancel


Je saisis un text en alert
        click button    ${InputTestAlert}
        input text into alert    TEST
         page should contain    TEST

