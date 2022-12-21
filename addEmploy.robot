*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}      chrome
${username}     Admin
${password}     admin123

*** Test Cases ***
LoginTest
       open browser    ${url}     ${browser}
       maximize browser window
       LoginApplication    ${username}    ${password}
       AddEmploye


*** Keywords ***

LoginApplication
    [Arguments]    ${username}    ${password}
      input text    id:txtUsername     ${username}
      input text    id:txtPassword     ${password}
      click element    id:btnLogin

AddEmploye
     click element    xpath://*[@id="menu_pim_viewPimModule"]/b
     click element    xpath://*[@id="menu_pim_addEmployee"]
     input text         id:firstName     GHORBEL
     input text         id:lastName      Nihel


     #execute javascript    document.getElementById('photofile').click();

      choose file   id:photofile    D:\formation selenim finish\ADATA UFD\formation

      select checkbox    id:chkLogin
      input text     id:user_name     aknh
      input text    id:user_password    hn18
      input text    id:re_password     hn18
      #select from list by index     0
      select from list by value    id:status    Enabled

     execute javascript    document.getElementById('btnSave').click();







