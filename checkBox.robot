*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    https://demo.guru99.com/test/radio.html
${browser}    chrome

*** Test Cases ***
checkBox

     open browser  ${url}  ${browser}
     maximize browser window
     select checkbox    id:vfb-6-0
     select checkbox    id:vfb-6-1
     select checkbox    id:vfb-6-2
     select radio button   webform    vfb-7-1
