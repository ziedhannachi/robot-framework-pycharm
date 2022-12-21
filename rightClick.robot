*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    https://demoqa.com/buttons
${browser}    chrome

*** Test Cases ***
rightClick
       open browser    ${url}     ${browser}
       maximize browser window
       open context menu   id:rightClickBtn
       page should contain    Vous avez fait un click droit
doubleClick
       double click element  id:doubleClickBtn
       page should contain    Vous avez fait un double click
dragAndDrob
       go to    https://testautomationpractice.blogspot.com/
       drag and drop    id:draggable      id:droppable