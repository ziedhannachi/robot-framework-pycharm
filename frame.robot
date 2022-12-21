*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    https://docs.oracle.com/javase/7/docs/api/
${browser}    chrome

*** Test Cases ***
Switch iframe
     set selenium timeout  20
     open browser  ${url}  ${browser}
     maximize browser window
     select frame    xpath:/html/frameset/frameset/frame[1]
     wait until page contains    Packages
     click element    xpath:/html/body/div[2]/ul/li[1]/a
     unselect frame

     select frame    xpath:/html/frameset/frameset/frame[2]
     click element    xpath:/html/body/div/ul[1]/li[1]/a/i
     unselect frame

    sleep    10

     select frame    xpath://*[@title = 'Package, class and interface descriptions']
     click link    xpath://*[@title = 'class in java.awt']