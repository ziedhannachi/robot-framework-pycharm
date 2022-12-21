*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    https://demoqa.com/menu
${browser}    chrome

*** Test Cases ***
mouseHover
       open browser    ${url}     ${browser}
       maximize browser window
       mouse over   xpath://*[@id="nav"]/li[2]/a
       mouse over   xpath://*[@id="nav"]/li[2]/ul/li[3]/a
       mouse over   xpath://*[@id="nav"]/li[2]/ul/li[3]/ul/li[1]/a/font/font