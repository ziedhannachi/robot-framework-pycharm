*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}    https://demoqa.com/alerts
${browser}      chrome

*** Test Cases ***
Handel Alert
       open browser     ${url}      ${browser}
       maximize browser window

       click button    id:alertButton
       handle alert    accept

       click button    id:confirmButton
       handle alert    accept
       page should contain      You selected Ok

       click button    id:confirmButton
       handle alert    dismiss
       page should contain    You selected Cancel

       click button    id:promtButton
       input text into alert    TEST
       page should contain    TEST
