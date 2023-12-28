*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Products.robot
Resource    ../Resources/ShoppingCart.robot
Resource    ../Resources/ConfirmationInformation.robot
Resource    ../Resources/CheckOutOverview.robot
Resource    ../Resources/Complete.robot
Variables   ../PageObjects/TestData.py
Suite Teardown  close all browsers

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    headlessfirefox
${valid_username}    standard_user
${valid_password}    secret_sauce
${FirstName}    John
${LastName}    Smith
${zcode}      321

*** Keywords ***
Valid Login
    Open My Browser     ${url}    ${browser}
    Enter User Name    ${valid_username}
    Enter Password    ${valid_password}
    Click SignIn
*** Test Cases ***
Add each item to cart
   FOR    ${index}    IN RANGE    0    6
    valid login
    click element    ${AddToCart[${index}]}
    Click Cart
    Checkout
    Input FirstName   ${FirstName}
    Input LastName    ${LastName}
    Input Zip    ${zcode}
    Select Continue
    OverviewCheckOut
    VerifyItemComplete
   END
