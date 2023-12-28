*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Complete.py

*** Keywords ***
VerifyItemComplete
    element should contain    ${CompleteMessage}    Checkout: Complete!

BackHome
    click element    ${BackHome}