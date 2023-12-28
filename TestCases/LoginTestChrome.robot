*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login.robot
Suite Teardown  close all browsers
*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    headlesschrome
${valid_username}    standard_user
${valid_password}    secret_sauce
${invalid_username}    123
${invalid_password}    @%!37

*** Test Cases ***
Valid Login
    Open My Browser     ${url}    ${browser}
    Enter User Name    ${valid_username}
    Enter Password    ${valid_password}
    Click SignIn
    Verify Success Login

Invaid Username Login
    Open My Browser      ${url}    ${browser}
    Enter User Name    ${invalid_username}
    Enter Password    ${valid_password}
    click signin
    verify error message

Invaid Password Login
    Open My Browser      ${url}    ${browser}
    Enter User Name    ${valid_username}
    Enter Password    ${invalid_password}
    click signin
    verify error message

Blank Username Login
    Open My Browser      ${url}    ${browser}
    Enter User Name    ${EMPTY}
    Enter Password    ${valid_password}
    Click SignIn
    Verify Username Error Message

Blank Password Login
    Open My Browser      ${url}    ${browser}
    Enter User Name    ${valid_username}
    Enter Password    ${EMPTY}
    Click SignIn
    Verify Password Error Message