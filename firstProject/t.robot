*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome



*** Test Cases ***

LoginOrangeHrm

   open browser     ${url}     ${browser}
   maximize browser window
   input text    id:txtUsername     Admin
   input text    id:txtPassword     admin123
   click element    id:btnLogin
