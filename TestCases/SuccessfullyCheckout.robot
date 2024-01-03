*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Products.robot
Resource    ../Resources/ShoppingCart.robot
Resource    ../Resources/ConfirmationInformation.robot
Resource    ../Resources/CheckOutOverview.robot
Resource    ../Resources/Complete.robot
Variables   ../PageObjects/TestData.py
Variables    ../config/defaults.yaml
Suite Teardown  close all browsers

*** Variables ***
${url}    ${url_main}
${browser}    ${browser2}
${valid_username}    ${username}
${valid_password}    ${password}
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
