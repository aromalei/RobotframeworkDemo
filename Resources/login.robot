*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/login.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}     ${browser}
    open browser    ${url}     ${browser}
    maximize browser window

Enter User Name
      [Arguments]    ${username}
      input text    ${LoginUserName}    ${username}

Enter Password
      [Arguments]    ${password}
      input text    ${LoginPassword}    ${password}

Click SignIn
     click element    ${loginbutton}

Verify Success Login
     element should be visible    xpath://*[@id="header_container"]/div[1]/div[2]/div

Verify Error Message
    page should contain    Epic sadface: Username and password do not match any user in this service
Verify Username Error Message
    page should contain    Epic sadface: Username is required
Verify Password Error Message
   page should contain    Epic sadface: Password is required